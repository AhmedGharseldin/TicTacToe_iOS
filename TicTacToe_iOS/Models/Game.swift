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
    var notEmpty =  false
    
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
    }
}
