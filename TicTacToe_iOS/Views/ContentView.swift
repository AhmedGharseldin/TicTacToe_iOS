//
//  ContentView.swift
//  TicTacToe_iOS
//
//  Created by Ahmed Gharseldin on 06/03/2021.
//

import SwiftUI

struct ContentView: View {

    @State private var game: Game = Game()
    var body: some View {
        ZStack {
            Color("FullBack")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Text("")
                .frame(width: 310, height: 310)
                .border(Color.black, width: 3)

                VStack(spacing: 0) {
                    HStack (spacing: 0) {
                        Button(action: {
                            print("Top Left Button!")
                            game.TopLeft()
                        }) {
                            Text (game.topLeft)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        Button(action: {
                            print("Top Mid Button!")
                            game.TopMid()
                        }) {
                            Text (game.topMid)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            print("Top Right Button!")
                            game.TopRight()
                        }) {
                            Text (game.topRight)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    HStack (spacing: 0) {
                        Button(action: {
                            print("Mid Left Button!")
                            game.MidLeft()

                        }) {
                            Text (game.midLeft)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        Button(action: {
                            print("Mid Mid Button!")
                            game.MidMid()
                        }) {
                            Text (game.midMid)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            print("Mid Right Button!")
                            game.MidRight()
                        }) {
                            Text (game.midRight)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    HStack (spacing: 0) {
                        Button(action: {
                            print("Low Left Button!")
                            game.LowLeft()
                        }) {
                            Text (game.lowLeft)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        Button(action: {
                            print("Low Mid Button!")
                            game.LowMid()
                        }) {
                            Text (game.lowMid)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            print("Low Right Button!")
                            game.LowRight()
                        }) {
                            Text (game.lowRight)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $game.alert, content: {
                            return Alert(title: Text(game.getAlertTitle()), message: Text (game.getAlertMessage()), dismissButton: .default(Text(game.nextAction())){game.continuePlaying()})
                        })
                        .frame(width: 100.0, height: 100.0)
                            .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
//                    Button(action: {
//                        game.continuePlaying()
//                    }, label: {
//                        Text("New Game")
//                            .font(.title2)
//                            .kerning(2.0)
//                            .fontWeight(.bold)
//                            .bold()
////                            .position(x: 0.0, y: 60.0)
//                            .frame(maxWidth: 270.0, maxHeight: 50.0)
//                            .foregroundColor(Color.red)
//                            .padding()
//                            .background(Color("X"))
//                            .border(Color.black)
//                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                    })
//
                }
                .background(Color("BackgroundColor"))
            
            Text("Tic Tac Toe")
                .fontWeight(.bold)
                .kerning(2.0)
                .background(Color("O2"))
                .padding()
                .shadow(radius: 2 )
                .frame(width: 310, height: 510, alignment: .top)
                .font(.title)
            Text("Score:\nPlayer X - \(game.scoreX) \nPlayer O - \(game.scoreO)")
                .kerning(2.0)
                .bold()
                .background(Color("O2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .shadow(radius: 5)
                .padding()
                .font(.footnote)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        ContentView()
//            .previewLayout(.fixed(width: 528, height: 320))
    }
}

