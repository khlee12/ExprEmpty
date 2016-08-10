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
        return "YES"
    }
    func doReverse()->String{
        //reverse the operand(except the symbol) and return reversed string
        return "reversed"
    }
    func doStrStr(needles:String)->Int{
        //return the position of substring appeared
        return -1
    }
}