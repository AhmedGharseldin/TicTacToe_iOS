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
    @State private var xWins = false
    @State private var oWins = false
    @State private var itsDraw = false

    var body: some View {
        ZStack {
            Color("FullBack")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
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
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.topLeft)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                    
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        Button(action: {
                            print("Top Mid Button!")
                            game.TopMid()
                            noMove = game.notEmpty
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.topMid)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            print("Top Right Button!")
                            game.TopRight()
                            noMove = game.notEmpty
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.topRight)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    HStack (spacing: 0) {
                        Button(action: {
                            print("Mid Left Button!")
                            game.MidLeft()
                            noMove = game.notEmpty
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.midLeft)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        Button(action: {
                            print("Mid Mid Button!")
                            game.MidMid()
                            noMove = game.notEmpty
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.midMid)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            print("Mid Right Button!")
                            game.MidRight()
                            noMove = game.notEmpty
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.midRight)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    HStack (spacing: 0) {
                        Button(action: {
                            print("Low Left Button!")
                            game.LowLeft()
                            noMove = game.notEmpty
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.lowLeft)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                        Button(action: {
                            print("Low Mid Button!")
                            game.LowMid()
                            noMove = game.notEmpty
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.lowMid)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        Button(action: {
                            print("Low Right Button!")
                            game.LowRight()
                            noMove = game.notEmpty
                            xWins = game.winnerX
                            oWins = game.winnerO
                            itsDraw = game.draw
                        }) {
                            Text (game.lowRight)
                                .bold()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        }
                        .alert(isPresented: $noMove, content: {
                            return Alert(title: Text("Oooops!"), message: Text ("This spot is already taken buddy"), dismissButton: .default(Text("Try Again !")))
                        })
                        .alert(isPresented: $xWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - X - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $oWins, content: {
                            return Alert(title: Text("Congratulations !!!"), message: Text ("Player - O - has won"), dismissButton: .default(Text("Play Again")))
                        })
                        .alert(isPresented: $itsDraw, content: {
                            return Alert(title: Text("Bummer !!!"), message: Text ("It's a draw"), dismissButton: .default(Text("Play Again")))
                        })
                            .frame(width: 100.0, height: 100.0)
                            .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
            }
                .background(Color("BackgroundColor"))
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
