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
        
        // the length of the input
        let n = operand.characters.count
        
        if 1 == n {
            return "Yes"
        }
        
        // convert the input to array
        let array = Array(self.operand.characters)
        
        // compare the first and the last character, then the second..
        for i in 0...n / 2 {
            if array[i] == array[n - i - 1] {
                continue
            } else {
                return "No"
            }
        }
        return "Yes"
    }
    
    func doReverse()->String{
        //reverse the operand(except the symbol) and return reversed string
        //let reversed = Array(self.operand.characters)[0]
        
        // convert the input to array
        let array = Array(self.operand.characters)
        let n = operand.characters.count
        var m: Int = 0
        var res: String = ""
        
        if "+" == array[0] || "-" == array[0] {
            res.append(array[0])
            m += 1
        }
        
        for var i=n-1; i>=m; i-=1 {
            res.append(array[i])
        }
        return res
    }
    func doStrStr(needles:String)->Int{
        //operand -> inputted String, needle -> substring
        //return the position of substring appeared
        
        // convert the input to array
        let array = Array(self.operand.characters)
        let subArray = Array(needles.characters)
        let n = self.operand.characters.count
        let m = needles.characters.count
        
        if m > n {
            return -1
        }
        
        for var i in 0..<n {
            var j: Int = i
            var k: Int = 0
            while array[j++] == subArray[k++] {
                if k == m {
                    return i
                }
            }
            i = j
        }
        return -1
    }
}
