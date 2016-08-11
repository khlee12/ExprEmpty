//
//  ExprCore.swift
//  Expr
//
//  Created by khlee on 6/29/16.
//  Copyright © 2016 khlee. All rights reserved.
//

import Foundation
class ExprCore{
    
    private var operand:String=""
    //operand stores the Strings that user inputted
    //numbers on the top, Strings on the buttom
    
    func setOperand(operand:String){
        self.operand = operand
    }
    
    func doIsPalindrome()->String{
        //check whether the operand is palindrome
        //if yes -> return "Yes", otherwise return "NO"
        if self.operand.hasPrefix("+") || self.operand.hasPrefix("-")
        {
            return "NO"
        }
        let compere: Bool? = (self.operand == doReverse())
        if compere! == true {
            return "YES"
        }
        return "NO"
    }
    
    func doReverse()->String{
        //reverse the operand(except the symbol) and return reversed string
        //let reversed = Array(self.operand.characters)[0]
        let length = self.operand.characters.count
        var reversed = Array(self.operand.characters)
        var last = length - 1
        var temp:Character
        var start = 0
        
        if self.operand.hasPrefix("+") || self.operand.hasPrefix("-"){
            start = 1
        }
        for i in start..<length {
            if i < last{
                temp = reversed[i]
                reversed[i] = reversed[last]
                reversed[last] = temp
                last -= 1
            }
        }
        
        var result:String = ""
        
        for i in 0..<length {
            result.append(reversed[i])
        }
        return result
    }
    func doStrStr(needles:String)->Int{
        //operand -> inputted String, needle -> substring
        //return the position of substring appeared
        let stringlength = self.operand.characters.count
        var stringarray = Array(self.operand.characters)
        let substringlength = needles.characters.count
        var substringarray = Array(needles.characters)
        
        if stringlength < substringlength{
            return -1
        }
        if stringlength <= 0 || substringlength <= 0{
            return -1
        }
        
        for i in 0..<stringlength {
            if stringarray[i] == substringarray[0]{
                var t = i
                for j in 0..<substringlength{
                    if stringarray[t] == substringarray[j]{
                        t += 1
                    }
                    if t == substringlength + 1 {
                        return i
                    }
                    
                }
            }
            
        }
        return -1
    }
}
