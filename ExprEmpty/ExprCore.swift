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
    
    func length(str:String)->Int{
        return str.characters.count
    }
    func toCharArray(str:String)->Array<Character>{
        return Array(str.characters)
    }
    func isPM(c:Character)->Bool
    {
        if c=="+" || c=="-"
        {
            return true
        }
        return false
    }
    func hasPM(str:String)->Bool
    {
        let s = toCharArray(str)
        let size = length(str)
        for i in 0..<size
        {
            if isPM(s[i])
            {
                return true
            }
        }
        return false
    }
    
    func reverse(str:String,startIndex:Int)->String
    {
        let s = toCharArray(str)
        let size = length(str)
        var rstr = s
        for i in 0..<(size-startIndex)
        {
            rstr[size-i-1] = s[i+startIndex]
        }
        return String(rstr)
    }

    func doIsPalindrome()->String{
        //check whether the operand is palindrome
        //if yes -> return "Yes", otherwise return "NO"
        if length(operand)==1
        {
            return "YES"
        }
        
        if hasPM(operand)
        {
            return "NO"
        }
        
        let rstr = reverse(operand,startIndex: 0)
        if(operand != rstr)
        {
            return "NO"
        }
        
        return "YES"
    }
    func doReverse()->String{
        return reverse(operand, startIndex: hasPM(operand) ? 1 : 0)
    }
    func doStrStr(needles:String)->Int{
        let operandLength = length(operand)
        let operandStr = toCharArray(operand)
        for i in 0 ..< operandLength
        {
            let needlesLength = length(needles)
            let needlesStr = toCharArray(needles)
            var isMatch = 0 < needlesLength
            for j in 0 ..< needlesLength
            {
                if operandLength <= i+j
                {
                    isMatch = false
                    break
                }
                if operandStr[i+j] != needlesStr[j]
                {
                    isMatch = false
                    break;
                }
            }
            if isMatch
            {
                return i;
            }
        }
        return -1
    }
}
