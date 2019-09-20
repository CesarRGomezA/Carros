//
//  ViewController.swift
//  Carros
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var carros : [Carro] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        carros.append(Carro(matricula: "XYZ123", modelo: "Focus", marca: "Ford", año: "2016"))
        carros.append(Carro(matricula: "ABC432", modelo: "Focus", marca: "Ford", año: "2018"))
        carros.append(Carro(matricula: "KLI189", modelo: "Tsuru", marca: "Nissan", año: "2013"))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarro") as? CeldaCarrosController
        
        celda?.lblPlaca.text = carros[indexPath.row].matricula
        celda?.lblMarca.text = carros[indexPath.row].marca
        celda?.lblModelo.text = carros[indexPath.row].modelo
        celda?.lblAño.text = carros[indexPath.row].año
        
        
        return celda!

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }


}

