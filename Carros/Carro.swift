//
//  Carro.swift
//  Carros
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation


class Carro {
    var matricula: String
    var modelo: String
    var marca: String
    var año: String
    
    init(matricula: String, modelo: String, marca: String, año: String)
    {
        self.matricula = matricula
        self.modelo = modelo
        self.marca = marca
        self.año = año
    }
    
}
