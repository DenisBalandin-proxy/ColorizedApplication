//
//  ViewController.swift
//  ColorizedApplication
//
//  Created by Denis on 2022/09/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var rgbSliders: [UISlider]!
    @IBOutlet var rgbLabels: [UILabel]!
    @IBOutlet var colorizedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureInitialSettings()
    }
    
    @IBAction func changeColors(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            rgbLabels[0].text = "Red: \(round(sender.value * 100) / 100.0)"
        case 1:
            rgbLabels[1].text = "Green: \(round(sender.value * 100) / 100.0)"
        default:
            rgbLabels[2].text = "Blue: \(round(sender.value * 100) / 100.0)"
        }
        blendColors()
    }
    
    private func configureInitialSettings() {
        colorizedView.layer.cornerRadius = 10
        blendColors()
    }
    
   private func blendColors() {
        colorizedView.backgroundColor = UIColor(
            red: CGFloat(rgbSliders[0].value),
            green: CGFloat(rgbSliders[1].value),
            blue: CGFloat(rgbSliders[2].value), alpha: 1
        )
    }
}
