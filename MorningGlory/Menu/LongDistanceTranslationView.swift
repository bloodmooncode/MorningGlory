//
//  LongDistanceTranslationView.swift
//  Test02
//
//  Created by 张原溥 on 2021/7/26.
//

import SwiftUI
import SwiftSpeech

struct LongDistanceTranslationView: View {
    @State var return10 = false
    @State var tag = false

    var locale: Locale
    
    @State var list: [(session: SwiftSpeech.Session, text: String)] = []
    @State var message = ""
    @State var type = false

    
//    public init(locale: Locale = .autoupdatingCurrent) {
//        self.locale = locale
//    }

    public init(localeIdentifier: String) {
        self.locale = Locale(identifier: "zh_Hans_CN")
    }

    public var body: some View {
        ZStack {
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button(action:{self.return10.toggle()}){
                        Image(systemName: "arrow.left")
                            .font(.system(size: 16,weight:.semibold))
                            .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)))
                    }
                    Spacer()
                    Text("远距离翻译")
                        .font(.system(size: 20,weight:.semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                    Spacer()
                    
                    Button(action: {
                        self.tag.toggle()
                    }){
                        Image("Library")
                    }
                    
                }
                .frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .center)
                
                Image("VoiceLocation")
                
                ZStack {
                    SwiftUI.List {
                        ForEach(list, id: \.session.id) { pair in
                            Text(pair.text)
                        }
                    }.overlay(
                        HStack(alignment: .center) {
                            
                            SwiftSpeech.RecordButton()
                                .scaleEffect(0.7)
                                .swiftSpeechToggleRecordingOnTap(locale: self.locale, animation: .spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0)
                                )
                                .onStartRecording { session in
                                    list.append((session, ""))
                                }.onCancelRecording { session in
                                    _ = list.firstIndex { $0.session.id == session.id }
                                        .map { list.remove(at: $0) }
                                }.onRecognize(includePartialResults: true) { session, result in
                                    list.firstIndex { $0.session.id == session.id }
                                        .map { index in
                                            list[index].text = result.bestTranscription.formattedString + (result.isFinal ? "" : "...")
                                        }
                                } handleError: { session, error in
                                    list.firstIndex { $0.session.id == session.id }
                                        .map { index in
                                            list[index].text = "Error \((error as NSError).code)"
                                        }
                            }.padding(20)
                        }
                        .frame(width: UIScreen.main.bounds.width - 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                        .offset(y:type ? 200 : 0)
                        .animation(.easeInOut(duration: 1))
                        ,
                        alignment: .bottom
                        
                    ).navigationTitle("List")
                        .listStyle(PlainListStyle())
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 130)
            
            if return10{
                HomePage()
                    .transition(.move(edge: .leading))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct LongDistanceTranslationView_Previews: PreviewProvider {
    static var previews: some View {
        LongDistanceTranslationView(localeIdentifier: "zh_Hans_CN")
    }
}
