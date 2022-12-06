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
        viewWindow.backgroundColor = .white
        viewWindow.layer.cornerRadius = viewWindow.frame.height / 10
        setupSlider(slider: sliderRed, color: .red)
        setupSlider(slider: sliderGreen, color: .green)
        setupSlider(slider: sliderBlue, color: .blue)
    }
    
    @IBAction func redSliderAction() {
        labelRed.text = String(sliderRed.value)
        viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: CGFloat(sliderRed.value))
        //let color: UIColor = .red
        //viewWindow.backgroundColor = viewWindow.backgroundColor?.withAlphaComponent(CGFloat(sliderRed.value))
    }
    
    @IBAction func greenSliderAction() {
        labelGreen.text = String(sliderGreen.value)
        //viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value) * 2.55, green: 255, blue: CGFloat(sliderBlue.value) * 2.55, alpha: 1).withAlphaComponent(CGFloat(sliderGreen.value))
        viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: CGFloat(sliderGreen.value))
        //viewWindow.backgroundColor = viewWindow.backgroundColor?.withAlphaComponent(CGFloat(sliderGreen.value))
        //viewWindow.backgroundColor = viewWindow.backgroundColor.
    }
    
    @IBAction func blueSliderAction() {
        labelBlue.text = String(sliderBlue.value)
        //viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value) * 2.55, green: CGFloat(sliderGreen.value) * 2.55, blue: 255, alpha: 1).withAlphaComponent(CGFloat(sliderBlue.value))
        viewWindow.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: CGFloat(sliderBlue.value))
        //viewWindow.backgroundColor = viewWindow.backgroundColor?.withAlphaComponent(CGFloat(sliderBlue.value))
    }
    
    private func setupSlider(slider: UISlider, color: UIColor) {
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .white
        slider.maximumTrackTintColor = color
    }
    
    
}

