//
//  ViewController.swift
//  carrito
//
//  Created by Denisse Maldonado on 4/30/20.
//  Copyright © 2020 tecdam. All rights reserved.
//

import UIKit

class ProductosViewController: UIViewController {
    @IBOutlet weak var tableProductos: UITableView!
    
    var data = [String: String]()
    var names = [String]()
    var precios = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if let productos = UserDefaults.standard.dictionary(forKey: "productos") {
            
            self.data = productos as! [String: String]
            
            for(name, price) in self.data {
                names.append(name)
                precios.append(price)
            }
            
            tableProductos.reloadData()
        }
    }
}

extension ProductosViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "productoCell", for: indexPath) as! PCTableViewCell
        
        cell.nombreLabel.text = names[indexPath.row]
        cell.priceLabel.text = precios[indexPath.row]
        
        return cell
    }
}
