//
//  MusicPlayer.swift
//  Test02
//
//  Created by 张原溥 on 2021/11/28.
//

import SwiftUI
import AVKit

struct MusicPlayer : View {
    
    @State var data : Data = .init(count: 0)
    @State var title = ""
    @State var player : AVAudioPlayer!
    @State var playing = false
    @State var width : CGFloat = 0
    @State var songs = ["Practice01","Practice02"]
    @State var current = 0
    @State var finish = false
    @State var del = AVdelegate()
    @Binding var barrierNum : Int
    
    var body : some View{
        
        VStack(spacing: 20){
            
            ZStack(alignment: .leading) {
            
                Capsule().fill(Color.white.opacity(0.5)).frame(height: 8)
                
                Capsule().fill(Color.blue).frame(width: self.width, height: 8)
                .gesture(DragGesture()
                    .onChanged({ (value) in
                        
                        let x = value.location.x
                        
                        self.width = x
                        
                    }).onEnded({ (value) in
                        
                        let x = value.location.x
                        
                        let screen = UIScreen.main.bounds.width - 30
                        
                        let percent = x / screen
                        
                        self.player.currentTime = Double(percent) * self.player.duration
                    }))
            }
            .padding(.top)
            .offset(y: -200)
            
            HStack(spacing: UIScreen.main.bounds.width / 15){
                
                Button(action: {
                    
                    if self.current > 0{
                        
                        self.current -= 1
                        
                        self.ChangeSongs()
                    }
                    
                    if barrierNum == 2{
                        barrierNum = 1
                    }

                }) {
            
                    Image(systemName: "backward").font(.title)
                    
                }
                
                    Button(action: {
                        
                        self.player.currentTime -= 15
                        
                    }) {
                
                        Image(systemName: "gobackward.15").font(.title)
                        
                    }
                
                    Button(action: {
                        
                        if self.player.isPlaying{
                            
                            self.player.pause()
                            self.playing = false
                        }
                        else{
                            
                            if self.finish{
                                
                                self.player.currentTime = 0
                                self.width = 0
                                self.finish = false
                                
                            }
                            
                            self.player.play()
                            self.playing = true
                        }
                        
                    }) {
                
                        Image(systemName: self.playing && !self.finish ? "pause" : "play").font(.title)
                        
                    }
                
                    Button(action: {
                       
                        let increase = self.player.currentTime + 15
                        
                        if increase < self.player.duration{
                            
                            self.player.currentTime = increase
                        }
                        
                    }) {
                
                        Image(systemName: "goforward.15").font(.title)
                        
                    }
                
                    Button(action: {
                        
                        if self.songs.count - 1 != self.current{
                            
                            self.current += 1
                            
                            self.ChangeSongs()
                        }
                        
                        if barrierNum == 1{
                            barrierNum = 2
                        }
                        
                    }) {
                
                        Image(systemName: "forward").font(.title)
                    }
                
            }
//            .padding(.top,25)
            .foregroundColor(.white)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.white))
            
        }
        .padding()
        .onAppear {
            
            let url = Bundle.main.path(forResource: self.songs[self.current], ofType: "mp3")
            
            self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
            
            self.player.delegate = self.del
            
            self.player.prepareToPlay()
            self.getData()
            
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                
                if self.player.isPlaying{
                    
                    let screen = UIScreen.main.bounds.width - 30
                    
                    let value = self.player.currentTime / self.player.duration
                    
                    self.width = screen * CGFloat(value)
                }
            }
            
            NotificationCenter.default.addObserver(forName: NSNotification.Name("Finish"), object: nil, queue: .main) { (_) in
                
                self.finish = true
            }
        }
    }
    
    func getData(){
        
        
        let asset = AVAsset(url: self.player.url!)
        
        for i in asset.commonMetadata{
            
            if i.commonKey?.rawValue == "artwork"{
                
                let data = i.value as! Data
                self.data = data
            }
            
            if i.commonKey?.rawValue == "title"{
                
                let title = i.value as! String
                self.title = title
            }
        }
    }
    
    func ChangeSongs(){
        
        let url = Bundle.main.path(forResource: self.songs[self.current], ofType: "mp3")
        
        self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
        
        self.player.delegate = self.del
        
        self.data = .init(count: 0)
        
        self.title = ""
        
        self.player.prepareToPlay()
        self.getData()
        
        self.playing = true
        
        self.finish = false
        
        self.width = 0
        
        self.player.play()
        

    }
}

class AVdelegate : NSObject,AVAudioPlayerDelegate{
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        
        NotificationCenter.default.post(name: NSNotification.Name("Finish"), object: nil)
    }
}

