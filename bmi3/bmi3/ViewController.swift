//
//  ViewController.swift
//  bmi3
//
//  Created by Leon Cheng on 2019/5/3.
//  Copyright © 2019年 Leon Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var txtBMI: UILabel!
    @IBOutlet weak var txtMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCal(_ sender: UIButton) {
        // BMI 公式 : 體重(公尺) / 身高(公尺)的平方
        let w = Double (txtWeight.text!)!
        let h = Double (txtHeight.text!)! / 100
        let bmi = w / (h * h )
        txtBMI.text = String (bmi)
    }
}

