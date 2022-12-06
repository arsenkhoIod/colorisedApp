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
        viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                             green: CGFloat(sliderGreen.value),
                                             blue: CGFloat(sliderBlue.value),
                                             alpha: 1)
        viewWindow.layer.cornerRadius = viewWindow.frame.height / 10
        setupSlider(slider: sliderRed, color: .red)
        setupSlider(slider: sliderGreen, color: .green)
        setupSlider(slider: sliderBlue, color: .blue)
        
        labelRed.text = String(format: "%.2f", sliderRed.value)
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
    }
    
    @IBAction func redSliderAction() {
        labelRed.text = String(format: "%.2f", sliderRed.value)
        viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                             green: CGFloat(sliderGreen.value),
                                             blue: CGFloat(sliderBlue.value),
                                             alpha: 1)
    }
    
    @IBAction func greenSliderAction() {
        labelGreen.text = String(format: "%.2f", sliderGreen.value)
        viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                             green: CGFloat(sliderGreen.value),
                                             blue: CGFloat(sliderBlue.value),
                                             alpha: 1)
    }
    
    @IBAction func blueSliderAction() {
        labelBlue.text = String(format: "%.2f", sliderBlue.value)
        viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                             green: CGFloat(sliderGreen.value),
                                             blue: CGFloat(sliderBlue.value),
                                             alpha: 1)
    }
    
    private func setupSlider(slider: UISlider, color: UIColor) {
        slider.value = 0
        slider.minimumTrackTintColor = .white
        slider.maximumTrackTintColor = color
    }
    
    
}

