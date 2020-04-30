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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ProductosViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as! PCTableViewCell
    
        return cell
    }
}
