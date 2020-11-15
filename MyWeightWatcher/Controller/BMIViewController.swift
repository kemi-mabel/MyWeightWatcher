//
//  BMIViewController.swift
//  MyWeightWatcher
//
//  Created by USER on 08/11/2020.
//

import UIKit

class BMIViewController: UIViewController {
//    var bmivalue : String = ""
    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        calculatorBrain.getBMIValue()
    }
    
    
    @IBOutlet weak var myHeight: UILabel!
    @IBOutlet weak var myWeight: UILabel!
    
    @IBOutlet weak var heightLabel: UISlider!

    @IBOutlet weak var weightLabel: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        myHeight.text = "\(height)M"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        myWeight.text = "\(weight)KG"
    }
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        let height = heightLabel.value
        let weight = weightLabel.value
        
//        let bmi = weight / pow(height, 2)
//        print(bmi)
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! SecondViewController
//            destinationVC.BMIValue = 0.00
            destinationVC.bmivalue = calculatorBrain.getBMIValue()
            destinationVC.advice =  calculatorBrain.getadvice()
            destinationVC.color = calculatorBrain.getcolor()
            
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
