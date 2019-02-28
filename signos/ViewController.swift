//
//  ViewController.swift
//  signos
//
//  Created by Almir Santos on 27/02/19.
//  Copyright © 2019 Almir Santos. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var signos:[String] = []
    var significadoSignos:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signos.append("Aries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sargitario")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significadoSignos.append("Aries 1")
        significadoSignos.append("Touro 2")
        significadoSignos.append("Gêmeos 3")
        significadoSignos.append("Câncer 4")
        significadoSignos.append("Leão 5")
        significadoSignos.append("Virgem 6")
        significadoSignos.append("Libra 7")
        significadoSignos.append("Escorpião 8")
        significadoSignos.append("Sargitario 9")
        significadoSignos.append("Capricórnio 10")
        significadoSignos.append("Aquário 11")
        significadoSignos.append("Peixes 12")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertController = UIAlertController(title: signos[indexPath.row], message: significadoSignos[indexPath.row], preferredStyle: .alert)
        let actionConfirm = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertController.addAction(actionConfirm)
        present(alertController, animated: true, completion: nil)
        
    }
}


