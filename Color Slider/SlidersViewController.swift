//
//  SlidersViewController.swift
//  Color Slider
//
//  Created by Yifei Li on 3/11/20.
//  Copyright © 2020 Yifei Li. All rights reserved.
//

import UIKit

class SlidersViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("hello")
    }


    @IBAction func sliderChanged(_ sender: Any) {
        redLabel.text = "\(redSlider.value)"
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
}
