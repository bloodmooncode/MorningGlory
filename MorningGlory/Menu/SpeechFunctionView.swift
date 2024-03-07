//
//  SpeechFunctionView.swift
//  Test02
//
//  Created by 张原溥 on 2021/10/12.
//

import SwiftUI
import SwiftSpeech
import Speech
import AVFoundation


struct SpeechFunctionView: View {
    
    @State var message  = ""
    @StateObject var allMessages = Messages()
    @State private var VoiceText = ""
    @State private var speechSynthesizer = AVSpeechSynthesizer()
    
    @StateObject var UsualData = UsualSentenceModel()
    @FetchRequest(entity: Task.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Task.content, ascending: true)], animation: .spring()) var results : FetchedResults<Task>
    @Environment(\.managedObjectContext) var context
    
    @State var usualButton = false
    @State var isFocus = false
    
    var sessionConfiguration: SwiftSpeech.Session.Configuration {
        SwiftSpeech.Session.Configuration(
            locale: locale,
            shouldReportPartialResults: false,
            contextualStrings: ["SwiftSpeech"],
            audioSessionConfiguration: .playAndRecord
        )
    }
    
    func hideKeyboard() {
          UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    var locale: Locale
    
    public init(locale: Locale = .autoupdatingCurrent) {
        self.locale = locale
    }
    public init(localeIdentifier: String) {
        self.locale = Locale(identifier: localeIdentifier)
    }
    
    @State var return11 = false
    
    var body: some View {
        ZStack {
            Color(.white)
                .edgesIgnoringSafeArea(.all)
            // Displaying Message

            GeometryReader { _ in
                VStack {
                    Spacer()
                    HStack {
                        Button(action:{self.return11.toggle()}){
                            Image(systemName: "arrow.left")
                                .font(.system(size: 16,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)))
                        }
                        Spacer()
                        Text("快捷对话")
                            .font(.system(size: 20,weight:.semibold))
                            .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                        Spacer()
                        
                        Button(action: {
                            self.usualButton.toggle()
                        }){
                            Image("Library")
                        }
                        
                    }
                    .frame(width: UIScreen.main.bounds.width - 50, height: 50, alignment: .center)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        ScrollViewReader { reader in
                            VStack(spacing: 20) {
                                ForEach(allMessages.messages) { msg in
                                    // Chat Bubbles
                                    ChatBubble(msg: msg)
                                }
                                // whenver a new data is inserted, scroll to bottom
                                .onChange(of: allMessages.messages) { value in
                                    // scrolling only user message
                                    if value.last!.myMsg {
                                        reader.scrollTo(value.last?.id)
                                    }
                                }
        //                            ChatBubble(msg: VoiceText)
                            }
                            .padding(.horizontal)
                            .padding(.top, 25)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.8)
                    .opacity(usualButton ? 0.2 : 1)
                    .onTapGesture{
                        self.isFocus = false
                        self.hideKeyboard()
                    }
                    .padding(.bottom, 80)
                    .background(Color.white)

                    HStack {
                        SwiftSpeech.RecordButton()
                            .scaleEffect(0.5)
                            .swiftSpeechToggleRecordingOnTap(locale: Locale(identifier: "zh_Hans_CN"), animation: .spring(response: 0.3, dampingFraction: 0.5, blendDuration: 0))
                            .onRecognizeLatest( includePartialResults: false,update: $VoiceText)
                            .printRecognizedText(includePartialResults: false)
                            
                        TextField("Message", text: $message)
                            .padding(.vertical, 12)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.06))
                            .clipShape(Capsule())
                            .frame(width: UIScreen.main.bounds.width - 150)
    //                        .modifier(hideKeyboard())
                            .onTapGesture{
                                self.isFocus = true
                            }
                        
                        if VoiceText != "" {
                            HStack{

                            }.onAppear(){
                                allMessages.voiceMessage(id:Date(), voice:VoiceText , myMsg: false)
                                VoiceText = ""
                            }
                
                        }
                        
                        if message != "" {
                            Button(action: {
                                // appending message
                                
                                // adding animation
                                
                                withAnimation(.easeIn) {
                                    allMessages.writeMessage(id: Date(), msg: message, myMsg: true)
                                }
                                
                                
                                let utterance = AVSpeechUtterance(string: self.message)
                                utterance.voice = AVSpeechSynthesisVoice(language: "zh-CN")
                                
                                utterance.rate = 0.5
                                
                                let synthesizer = AVSpeechSynthesizer()
                                synthesizer.speak(utterance)
                                
                                message = ""
                                
                            }) {
                                Image(systemName: "paperplane.fill")
                                    .font(.system(size: 22))
                                    .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                                // rotating the image
                                    .rotationEffect(.init(degrees: 45))
                                    .padding(.vertical, 12)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 17)
                                    .background(Color.black.opacity(0.07))
                                    .clipShape(Circle())
                            }
                        }
                        Spacer()
                    }
                    .frame(width: UIScreen.main.bounds.width - 60  , height: 50)
                    .padding(15)
                    .offset(y: isFocus ? -250 : 0)
                }
                .frame(height: UIScreen.main.bounds.height / 1.15)
            .animation(.easeInOut)
            }
            
            ZStack {
                Color(.gray).opacity(0.3)
                    .edgesIgnoringSafeArea(.all)
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                    VStack(spacing:0){
                        
                        HStack{
                            Text("常用语")
                                .font(.system(size: 20,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                            Spacer()
                            Button(action:{UsualData.isNewData.toggle()}){
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 24,weight:.semibold))
                                    .foregroundColor(Color(#colorLiteral(red: 0.1450980392, green: 0.5803921569, blue: 1, alpha: 1)))
                            }
                        }
                        .padding()

                        if results.isEmpty{
                            Spacer()
                            Text("当前没有常用语")
                                .font(.system(size: 20,weight:.semibold))
                                .foregroundColor(Color(#colorLiteral(red: 0.0431372549, green: 0.4196078431, blue: 0.8, alpha: 1)))
                            Spacer()
                        }
                        else{
                            ScrollView(.vertical,showsIndicators: false,content: {
                                LazyVStack(alignment: .leading, spacing: 20){
                                    ForEach(results) {task in
                                        HStack {
                                            
                                            Text(task.content  ?? "")
                                                .font(.system(size: 20,design:.rounded))
                                                .contextMenu{
                                                    Button(action: {
                                                        UsualData.EditItem(item: task)
                                                    }, label: {
                                                        Text("Edit")
                                                    })
                                                    
                                                    Button(action: {
                                                        context.delete(task)
                                                        try! context.save()
                                                    }, label: {
                                                        Text("Delete")
                                                    })
                                                    
                                                    
                                                    Button(action:{
                                                        
                                                        message.append(contentsOf: task.content ?? "")
//                                                        print(message)
                                                    },label:{
                                                        Text("Use this")
                                                    })
                                                }
                                            Spacer()
                                            
                                            
                                        }
                                        .frame(width: UIScreen.main.bounds.width - 50)
                                        .padding(.horizontal)
                                    }
                                }
                                .padding()
                            })
                        }
                    }
                })
                    .edgesIgnoringSafeArea(.top)
                    .sheet(isPresented: $UsualData.isNewData ,content: {
                        NewDataView(UsualData: UsualData)
                    })
            }
            .frame(width: UIScreen.main.bounds.width - 50, height: UIScreen.main.bounds.height / 2)
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
            .opacity(usualButton ? 1: 0.01)
            .animation(.easeIn)
            
            if return11 {
                HomePage()
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
        .frame(width: UIScreen.main.bounds.width)
        .edgesIgnoringSafeArea(.all)
//        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}


// Chat Bubbles
struct ChatBubble: View {
    var msg: Message
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            if msg.myMsg {
                // pushing msg to left
                
                // Modying for Image
                
                // minimum space
                Spacer(minLength: 25)
                
                Text(msg.message)
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .clipShape(BubbleArrow(myMsg: msg.myMsg))
                
            }
            else{
                Text(msg.message)
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                    .clipShape(BubbleArrow(myMsg: msg.myMsg))
                Spacer(minLength: 25)
            }
        }
        // Automatic Scroll To bottom
        // First Assigning Id To Each Row
        .id(msg.id)
    }
}

// Bubble Arrow
struct BubbleArrow: Shape {
    var myMsg: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: myMsg ? [.topLeft, .bottomLeft, .bottomRight] : [.topRight, .bottomLeft, .bottomRight], cornerRadii: CGSize(width: 10, height: 10))
        
        return Path(path.cgPath)
    }
}

// Custom Rounded Shape
struct RoundedShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

// Model Data for Message

struct Message: Identifiable, Equatable {
    var id: Date
    var message: String
    var myMsg: Bool
}

class Messages: ObservableObject {
    @Published var messages: [Message] = []
    
    func writeMessage(id: Date, msg: String, myMsg: Bool) {
        messages.append(Message(id: id, message: msg, myMsg: myMsg))
    }

    func voiceMessage(id: Date, voice: String, myMsg: Bool) {
        messages.append(Message(id: id, message: voice, myMsg: myMsg))
    }
}

struct SpeechFunctionView_Previews: PreviewProvider {
    static var previews: some View {
        SpeechFunctionView()
    }
}

