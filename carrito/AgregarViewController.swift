//
//  AgregarViewController.swift
//  carrito
//
//  Created by Denisse Maldonado on 4/30/20.
//  Copyright © 2020 tecdam. All rights reserved.
//

import UIKit

class AgregarViewController: UIViewController {
    @IBOutlet weak var nombreText: UITextField!
    @IBOutlet weak var precioText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func agregarAction(_ sender: Any) {
        agregarProducto()
    }
    
    func agregarProducto() {
        
    }
}

extension AgregarViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(nombreText == textField) {
            precioText.becomeFirstResponder()
            return false
        } else {
            agregarProducto()
            return true
        }
    }
}
