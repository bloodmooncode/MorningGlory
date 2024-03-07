//
//  WritingBoard.swift
//  Test02
//
//  Created by 张原溥 on 2021/10/12.
//

import SwiftUI
import PencilKit

struct WritingBoard: View {
    @State var canvas = PKCanvasView()
    @State var isDraw = true
    @State var color: Color = .black
    @State var type: PKInkingTool.InkType = .pencil
    @State var colorPicker = false
    @State var return12 = false
    
    // default is pen
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))
                .edgesIgnoringSafeArea(.all)
            NavigationView {
                // Drawing View
                DrawingView(canvas: $canvas, isDraw: $isDraw, type: $type, color: $color)
                    .navigationTitle("白板工具")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarItems(leading: Button(action: {
                        // saving Image
                        self.return12.toggle()
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.system(size: 16,weight:.semibold))
                            .foregroundColor(Color(#colorLiteral(red: 0.1333333333, green: 0.1333333333, blue: 0.1333333333, alpha: 1)))
                    }, trailing: HStack(spacing: 15) {
                        Button(action: {
                            // Erase tool
                            isDraw = false
                        }) {
                            Image(systemName: "pencil.slash")
                                .font(.title)
                        }
                        
                        // Menu for InkType and Color
                        Menu {
                            // Color Picker
                            Button(action: {
                                colorPicker.toggle()
                            }) {
                                Label {
                                    Text("Color")
                                } icon: {
                                    Image(systemName: "eyedropper.full")
                                }
                            }
                            
                            Button(action: {
                                // Changing tool
                                isDraw = true
                                type = .pencil
                            }) {
                                Label {
                                    Text("Pencil")
                                } icon: {
                                    Image(systemName: "pencil")
                                }
                            }
                            
                            Button(action: {
                                isDraw = true
                                type = .pen
                            }) {
                                Label {
                                    Text("Pen")
                                } icon: {
                                    Image(systemName: "pencil.tip")
                                }
                            }
                            
                            Button(action: {
                                isDraw = true
                                type = .marker
                            }) {
                                Label {
                                    Text("Marker")
                                } icon: {
                                    Image(systemName: "highlighter")
                                }
                            }
                        } label: {
                            Image("menu")
                                .resizable()
                                .frame(width: 22, height: 22)
                        }

                    })
                    .sheet(isPresented: $colorPicker) {
                        ColorPicker("Pick Color", selection: $color)
                            .padding()
                    }
            }
            .frame(height: UIScreen.main.bounds.height / 1.1)
            if return12{
                HomePage()
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut)
            }
        }
    }
}
    
struct DrawingView: UIViewRepresentable {
    // to capture drawing for saving into album
    @Binding var canvas: PKCanvasView
    @Binding var isDraw: Bool
    @Binding var type: PKInkingTool.InkType
    @Binding var color: Color
    
    // updating inkType
    var ink: PKInkingTool{
        PKInkingTool(type, color: UIColor(color))
    }
    
    let eraser = PKEraserTool(.bitmap)
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvas.drawingPolicy = .anyInput
        
        canvas.tool = isDraw ? ink : eraser
        
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        // updating tool whenever main View updates
        uiView.tool = isDraw ? ink : eraser
        
    }
}
    

struct WritingBoard_Previews: PreviewProvider {
    static var previews: some View {
        WritingBoard()
    }
}
