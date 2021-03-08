//
//  ContentView.swift
//  TicTacToe_iOS
//
//  Created by Ahmed Gharseldin on 06/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var weHaveWinner = false
    @State private var game: Game = Game()
    @State private var noMove = false
    
    var body: some View {
        ZStack {
            Text ("")
            .frame(width: 310, height: 310)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
            VStack {
                HStack (spacing: 0) {
                    Button(action: {
                        print("Top Left Button!")
                        game.TopLeft()
                        noMove = game.notEmpty
                    }) {
                        Text (game.topLeft)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                    Button(action: {
                        print("Top Mid Button!")
                        game.TopMid()
                        noMove = game.notEmpty
                    }) {
                        Text (game.topMid)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    Button(action: {
                        print("Top Right Button!")
                        game.TopRight()
                        noMove = game.notEmpty
                    }) {
                        Text (game.topRight)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
                HStack (spacing: 0) {
                    Button(action: {
                        print("Mid Left Button!")
                        game.MidLeft()
                        noMove = game.notEmpty
                    }) {
                        Text (game.midLeft)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                    Button(action: {
                        print("Mid Mid Button!")
                        game.MidMid()
                        noMove = game.notEmpty
                    }) {
                        Text (game.midMid)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    Button(action: {
                        print("Mid Right Button!")
                        game.MidRight()
                        noMove = game.notEmpty
                    }) {
                        Text (game.midRight)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
                HStack (spacing: 0) {
                    Button(action: {
                        print("Low Left Button!")
                        game.LowLeft()
                        noMove = game.notEmpty
                    }) {
                        Text (game.lowLeft)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                    Button(action: {
                        print("Low Mid Button!")
                        game.LowMid()
                        noMove = game.notEmpty
                    }) {
                        Text (game.lowMid)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    Button(action: {
                        print("Low Right Button!")
                        game.LowRight()
                        noMove = game.notEmpty
                    }) {
                        Text (game.lowRight)
                    }
                    .alert(isPresented: $noMove, content: {
                        return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                    })
                        .frame(width: 100.0, height: 100.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 528, height: 320))
    }
}
