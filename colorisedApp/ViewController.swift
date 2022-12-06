//
//  ViewController.swift
//  colorisedApp
//
//  Created by mac on 05.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewWindow: UIView!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setColor()
        viewWindow.layer.cornerRadius = viewWindow.frame.height / 10
        setupSlider(slider: sliderRed, color: .red)
        setupSlider(slider: sliderGreen, color: .green)
        setupSlider(slider: sliderBlue, color: .blue)
        
        setValue(for: labelRed, labelBlue, labelGreen)
    }
    
    @IBAction func sliderAction() {
        setColor()
        setValue(for: labelRed, labelBlue, labelGreen)
    }
    
    private func setupSlider(slider: UISlider, color: UIColor) {
        slider.value = 0
        slider.minimumTrackTintColor = .white
        slider.maximumTrackTintColor = color
    }
    
    private func setColor() {
        viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                             green: CGFloat(sliderGreen.value),
                                             blue: CGFloat(sliderBlue.value),
                                             alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case labelRed:
                labelRed.text = string(from: sliderRed)
            case labelGreen:
                labelGreen.text = string(from: sliderGreen)
            default:
                labelBlue.text = string(from: sliderBlue)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
}

