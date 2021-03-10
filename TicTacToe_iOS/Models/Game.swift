//
//  Game.swift
//  TicTacToe_iOS
//
//  Created by Ahmed Gharseldin on 08/03/2021.
//

import Foundation
struct Game {
    var player   = 1
    var topLeft  = " "
    var topMid   = " "
    var topRight = " "
    var midLeft  = " "
    var midMid   = " "
    var midRight = " "
    var lowLeft  = " "
    var lowMid   = " "
    var lowRight = " "
    var status = "playing"
    var alert = false
    var scoreX = 0
    var scoreO = 0
    
    mutating func TopLeft (){
        if (topLeft == " "){
            if (player == 1){
                topLeft = "X"
                player = 2
            }
            else{
                topLeft = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func TopMid (){
        if (topMid == " "){
            if (player == 1){
                topMid = "X"
                player = 2
            }
            else{
                topMid = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func TopRight (){
        if (topRight == " "){
            if (player == 1){
                topRight = "X"
                player = 2
            }
            else{
                topRight = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func MidLeft (){
        if (midLeft == " "){
            if (player == 1){
                midLeft = "X"
                player = 2
            }
            else{
                midLeft = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func MidMid (){
        if (midMid == " "){
            if (player == 1){
                midMid = "X"
                player = 2
            }
            else{
                midMid = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func MidRight (){
        if (midRight == " "){
            if (player == 1){
                midRight = "X"
                player = 2
            }
            else{
                midRight = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func LowLeft (){
        if (lowLeft == " "){
            if (player == 1){
                lowLeft = "X"
                player = 2
            }
            else{
                lowLeft = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func LowMid (){
        if (lowMid == " "){
            if (player == 1){
                lowMid = "X"
                player = 2
            }
            else{
                lowMid = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func LowRight (){
        if (lowRight == " "){
            if (player == 1){
                lowRight = "X"
                player = 2
            }
            else{
                lowRight = "O"
                player = 1
            }
        } else{
            status = "not empty"
            alert = true
        }
        updateGameStatus()
    }
    mutating func updateGameStatus(){
        // Checking the vertical columns
        if (topLeft == midLeft && midLeft == lowLeft){
            if (topLeft == "X"){
                status = "X won"
                alert = true
                scoreX += 1
            }
            else if (topLeft == "O"){
                status = "O won"
                alert = true
                scoreO += 1

            }
        }
        else if (topMid == midMid && midMid == lowMid){
            if (topMid == "X"){
                status = "X won"
                alert = true
                scoreX += 1

            }
            else if (topMid == "O"){
                status = "O won"
                alert = true
                scoreO += 1
            }
        }
        else if (topRight == midRight && midRight == lowRight){
            if (topRight == "X"){
                status = "X won"
                scoreX += 1

            }
            else if (topRight == "O"){
                status = "O won"
                alert = true
                scoreO += 1
            }
        }
        // Checking the horizontal rows
        else if (topLeft == topMid && topMid == topRight){
            if (topRight == "X"){ //changed this to topLeft
                status = "X won"
                alert = true
                scoreX += 1
            }
            else if (topRight == "O"){ // changed this to topLeft
                status = "O won"
                alert = true
                scoreO += 1
            }
        }
        else if (midLeft == midMid && midMid == midRight){
            if (midLeft == "X"){
                status = "X won"
                alert = true
                scoreX += 1
            }
            else if (midLeft == "O"){
                status = "O won"
                alert = true
                scoreO += 1
            }
        }
        else if (lowLeft == lowMid && lowMid == lowRight){
            if (lowLeft == "X"){
                status = "X won"
                alert = true
                scoreX += 1
            }
            else if (lowLeft == "O"){
                status = "O won"
                alert = true
                scoreO += 1
            }
        }
        // Checking the diagonals
        else if (topLeft == midMid && midMid == lowRight){
            if (topLeft == "X"){
                status = "X won"
                alert = true
                scoreX += 1
            }
            else if (topLeft == "O"){
                status = "O won"
                alert = true
                scoreO += 1
            }
        }
        else if (topRight == midMid && midMid == lowLeft){
            if (topRight == "X"){
                status = "X won"
                alert = true
                scoreX += 1
            }
            else if (topRight == "O"){
                status = "O won"
                alert = true
                scoreO += 1
            }
        }
        else if (topRight != " " && topMid != " " && topLeft != " " && midLeft != " " && midRight != " " && midMid != " " && lowLeft != " " && lowMid != " " && lowRight != " "  ){
            status = "draw"
            alert = true
        }
    }

    func getAlertTitle() -> String{
        switch status {
            case "not empty":
                return "Oooops!"
            case "X won", "O won":
                return "Congratulations !!!"
            case "draw":
                return "Bummer !!!"
            default:
                return ""
        }
    }

    func getAlertMessage() -> String{
        switch status {
            case "not empty":
                return "This spot is already taken buddy"
            case "X won":
                return "Player - X - has won"
            case "O won":
                return "Player - O - has won"
            case "draw":
                return "It's a draw"
            default:
                return ""
        }
    }

    func nextAction() -> String{
        switch status {
            case "not empty":
                return "Try Again !"
            case "X won", "O won", "draw":
                return "Play Again"
            default:
                return ""
        }
    }

    mutating func continuePlaying(){
        if(status == "X won" || status == "O won" || status == "draw"){
            player   = 1
            topLeft  = " "
            topMid   = " "
            topRight = " "
            midLeft  = " "
            midMid   = " "
            midRight = " "
            lowLeft  = " "
            lowMid   = " "
            lowRight = " "
            print("Starting Over")
        }else{
            print("Continue playing")
        }
        alert = false
        status = "playing"
    }
}
