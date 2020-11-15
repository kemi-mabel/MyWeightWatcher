//
//  SecondViewController.swift
//  MyWeightWatcher
//
//  Created by USER on 08/11/2020.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var BMILabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var recalculateBtn: UIButton!
    
    @IBAction func recalculateBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    var bmivalue : String?
    var advice : String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BMILabel.text = bmivalue
        adviceLabel.text = advice
        view.backgroundColor = color
        
//        BMILabel.text = String(BMIValue)
        

        // Do any additional setup after loading the view.
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
