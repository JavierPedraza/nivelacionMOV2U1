//
//  ViewController.swift
//  NivelacionUnidad1
//
//  Created by mac19 on 14/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_Calcular: UIButton!
    @IBOutlet weak var sldr_Porc: UISlider!
    @IBOutlet weak var txtf_TotalCuenta: UITextField!
    @IBOutlet weak var lbl_Porcentaje: UILabel!
    
    var propina = 0.0
    var total = 0.0
    var porcentaje = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func cambiarPorcentaje(_ sender: UISlider) {
        lbl_Porcentaje.text = "%"+String(sldr_Porc.value)
    }
    
    @IBAction func calcularProp(_ sender: UIButton) {
        let total2 = txtf_TotalCuenta.text
        
        porcentaje = Double(sldr_Porc.value)
        
        propina = Double((total*porcentaje)/100)
    }
}
