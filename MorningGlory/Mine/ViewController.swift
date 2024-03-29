//
//  ViewController.swift
//  Demo
//
//  Created by Christopher Ladd on 10/14/21.
//

import UIKit
import AVFAudio
import SwiftUI
import UserNotifications

struct SoundClassifyView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = ViewController()
        return vc
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
         
    }
}


class ViewController: UIViewController {
    let analyzer = Analyzer()
    let audioEngine = AVAudioEngine()
    let label = UILabel()
    
    var text: String? = nil {
        didSet {
            guard oldValue != text else { return }
            DispatchQueue.main.async {
                if let text = self.text {
                    self.label.text = text
                    self.label.font = UIFont.systemFont(ofSize: 48, weight: .heavy)
                    self.label.textColor = .blue
                    //self.view.backgroundColor = .cyan
                }
                else {
                    self.clearLabel()
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        setupAudioEngine()
        setupAnalyzer()
    }
}

extension ViewController {
    func setupAnalyzer() {
        analyzer.windowDuration = 0.75
        
        analyzer.soundGroups = [
//            SoundGroup(.speech, threshold: 0.7),
            //SoundGroup(.whistling, threshold: 0.7),
            //SoundGroup(.snoring, threshold: 0.4),
            //SoundGroup(.knock, threshold: 0.5),
            //SoundGroup(.laughter, threshold: 0.2)
            SoundGroup(.car_horn,threshold: 0.5)
        ]
        
        analyzer.onUpdate = { [weak self] _, groups in
            guard let groups = groups else {
                self?.text = nil
                return
            }
            
            var text = ""
            for match in groups {
                text += "\(match.sound.label)\n\(Int(match.confidence * 100))%\n"
                
            }
            
            self?.text = text
        
            // Notification authorization
            let center = UNUserNotificationCenter.current()
            center.requestAuthorization(options: [.alert, .sound]) {granted, error in
              if granted {
                print("We have permission")
              } else {
                print("Permission denied")
              }
            }

            let content = UNMutableNotificationContent()
            content.title = "通知"
            content.body = "有车辆鸣笛声，注意安全哦!"
            content.sound = UNNotificationSound.default

            let trigger = UNTimeIntervalNotificationTrigger(
              timeInterval: 10,
              repeats: false)
            let request = UNNotificationRequest(
              identifier: "MyNotification",
              content: content,
              trigger: trigger)
            

            
            for match in groups{
                if match.confidence * 100 > 50 {
                    center.add(request)
                }
            }
        }
    }
}

extension ViewController {
    func setupAudioEngine() {
        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(.record)
            try session.setActive(true)
            
            audioEngine.inputNode.installTap(onBus: 0, bufferSize: 2048, format: nil) { [weak self] buffer, time in
                self?.analyzer.process(buffer: buffer, time: time)
            }
            
            try audioEngine.start()
        }
        catch {
            print("Error starting engine: \(error.localizedDescription)")
        }
    }
}

extension ViewController {
    fileprivate func clearLabel() {
        label.text = "正在监听...\n\n"
        label.textColor = UIColor(white: 0.4, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 36, weight: .medium)
        view.backgroundColor = .white
    }
    
    fileprivate func setupLabel() {
        label.numberOfLines = 0
        label.textColor = .systemIndigo
        label.textAlignment = .center
        label.frame = view.bounds
        label.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        clearLabel()
        
        view.addSubview(label)
    }
}
