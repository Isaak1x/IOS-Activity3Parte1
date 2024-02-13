//
//  ViewController.swift
//  Act3Parte1
//
//  Created by SAMUEL HERRERA on 12/02/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var sliderR: UISlider!
    @IBOutlet weak var sliderG: UISlider!
    @IBOutlet weak var sliderB: UISlider!
    @IBOutlet weak var sliderA: UISlider!
    
    @IBOutlet weak var labelR: UILabel!
    @IBOutlet weak var labelG: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var labelA: UILabel!
    
    @IBOutlet weak var buttonReset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Configurar los sliders con valores iniciales
        sliderR.value = 255
        sliderG.value = 255
        sliderB.value = 255
        sliderA.value = 100
        // Llamar a la función de actualización para establecer el color inicial
        updateBackgroundColor()
    }

    @IBAction func sliderRChanged(_ sender: UISlider) {
        labelR.text = "\(Int(sender.value))"
        updateBackgroundColor()
    }

    @IBAction func sliderGChanged(_ sender: UISlider) {
        labelG.text = "\(Int(sender.value))"
        updateBackgroundColor()
    }

    @IBAction func sliderBChanged(_ sender: UISlider) {
        labelB.text = "\(Int(sender.value))"
        updateBackgroundColor()
    }

    @IBAction func sliderAChanged(_ sender: UISlider) {
        labelA.text = "\(Int(sender.value))"
        updateBackgroundColor()
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    // Restablecer los valores de los sliders
            sliderR.value = 255
            sliderG.value = 255
            sliderB.value = 255
            sliderA.value = 100

            // Actualizar los labels
            labelR.text = "255"
            labelG.text = "255"
            labelB.text = "255"
            labelA.text = "100"

            // Actualizar el color de fondo
            updateBackgroundColor()
        }
    

    func updateBackgroundColor() {
        let red = CGFloat(sliderR.value) / 255.0
        let green = CGFloat(sliderG.value) / 255.0
        let blue = CGFloat(sliderB.value) / 255.0
        let alpha = CGFloat(sliderA.value) / 100.0
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        imageView.backgroundColor = color
    }
}

