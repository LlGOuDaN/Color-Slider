//
//  SlidersViewController.swift
//  Color Slider
//
//  Created by Yifei Li on 3/11/20.
//  Copyright © 2020 Yifei Li. All rights reserved.
//

import UIKit

class SlidersViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redSlider.value = 0.71
        greenSlider.value = 0.04
        blueSlider.value = 0.22
        alphaSlider.value = 1.0
        updateView()
    }


    @IBAction func sliderChanged(_ sender: Any) {
        updateView()
        redLabel.text = String(format: "%.2f", redSlider.value)
    }
    
    func updateView(){
        print("Red: \(redSlider.value) Green: \(greenSlider.value) Blue: \(blueSlider.value) Alpha: \(alphaSlider.value)")
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        alphaLabel.text = String(format: "%.2f", alphaSlider.value)
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
    }
}
