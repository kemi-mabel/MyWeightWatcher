//
//  CalculatorBrain.swift
//  MyWeightWatcher
//
//  Created by Oluwakemi Onajinrin on 08/11/2020.
//

import UIKit

struct CalculatorBrain {
    
//    var bmi : Float?
    var bmi : BMI?
    
    func getadvice() -> String {
        return bmi?.advice ?? "No advice"
    }
   
    func getcolor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) 
    }
    func getBMIValue() -> String{
        
        let bmidecimalplace = String(format:"%.1f", bmi?.value ?? 0.0) //nil coalescing
            return bmidecimalplace
       
    }
    mutating func calculateBMI(height: Float, weight: Float){
        
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight, please eat more!!!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue < 25{
            bmi = BMI(value: bmiValue, advice: "Fit Fam, Stay Hard", color: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
            }
        else {
                bmi = BMI(value: bmiValue, advice: "Eat less, Work out more", color: #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
            }
    }
       
}
