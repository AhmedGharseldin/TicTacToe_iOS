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
    var notEmpty = false
    var winnerX  = false
    var winnerO  = false
    var draw     = false
    
    mutating func TopLeft (){
        if (topLeft == " "){
            if (player == 1){
                topLeft = "X"
                player = 2
                notEmpty =  false
            }
            else{
                topLeft = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func TopMid (){
        if (topMid == " "){
            if (player == 1){
                topMid = "X"
                player = 2
                notEmpty =  false
            }
            else{
                topMid = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func TopRight (){
        if (topRight == " "){
            if (player == 1){
                topRight = "X"
                player = 2
                notEmpty =  false
            }
            else{
                topRight = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func MidLeft (){
        if (midLeft == " "){
            if (player == 1){
                midLeft = "X"
                player = 2
                notEmpty =  false
            }
            else{
                midLeft = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func MidMid (){
        if (midMid == " "){
            if (player == 1){
                midMid = "X"
                player = 2
                notEmpty =  false
            }
            else{
                midMid = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func MidRight (){
        if (midRight == " "){
            if (player == 1){
                midRight = "X"
                player = 2
                notEmpty =  false
            }
            else{
                midRight = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func LowLeft (){
        if (lowLeft == " "){
            if (player == 1){
                lowLeft = "X"
                player = 2
                notEmpty =  false
            }
            else{
                lowLeft = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func LowMid (){
        if (lowMid == " "){
            if (player == 1){
                lowMid = "X"
                player = 2
                notEmpty =  false
            }
            else{
                lowMid = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func LowRight (){
        if (lowRight == " "){
            if (player == 1){
                lowRight = "X"
                player = 2
                notEmpty =  false
            }
            else{
                lowRight = "O"
                player = 1
                notEmpty =  false
            }
        } else{
            notEmpty = true
        }
        updateGameStatus()
    }
    mutating func updateGameStatus(){
        // Checking the vertical columns
        if (topLeft == midLeft && midLeft == lowLeft){
            if (topLeft == "X"){
                winnerX  = true}
            else if (topLeft == "O"){
                winnerO  = true}
        }
        else if (topMid == midMid && midMid == lowMid){
            if (topMid == "X"){
                winnerX  = true}
            else if (topMid == "O"){
                winnerO  = true}
        }
        else if (topRight == midRight && midRight == lowRight){
            if (topRight == "X"){
                winnerX  = true}
            else if (topRight == "O"){
                winnerO  = true}
        }
        // Checking the horizontal rows
        else if (topLeft == topMid && topMid == topRight){
            if (topRight == "X"){
                winnerX  = true}
            else if (topRight == "O"){
                winnerO  = true}
        }
        else if (midLeft == midMid && midRight == topRight){
            if (midLeft == "X"){
                winnerX  = true}
            else if (topRight == "O"){
                winnerO  = true}
        }
        else if (lowLeft == lowMid && lowLeft == lowRight){
            if (lowLeft == "X"){
                winnerX  = true}
            else if (lowLeft == "O"){
                winnerO  = true}
        }
        // Checking the diagonals
        else if (topLeft == midMid && midMid == lowRight){
            if (lowLeft == "X"){
                winnerX  = true}
            else if (lowLeft == "O"){
                winnerO  = true}
        }
        else if (topRight == midMid && midMid == lowLeft){
            if (topRight == "X"){
                winnerX  = true}
            else if (topRight == "O"){
                winnerO  = true}
        }
        else if (topRight != " " && topMid != " " && topLeft != " " && midLeft != " " && midRight != " " && midMid != " " && lowLeft != " " && lowMid != " " && lowRight != " "  ){
            draw = true
        }
    }

}
