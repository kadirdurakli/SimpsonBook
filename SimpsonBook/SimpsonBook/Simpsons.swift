//
//  Simpsons.swift
//  SimpsonBook
//
//  Created by Kadir Duraklı on 14.07.2024.
//

import Foundation
import UIKit

class Simpsons {
    
    var name : String = ""
    var job : String = ""
    var image : UIImage! = nil
    
    init(name: String, job: String, image: UIImage!) {
        self.name = name
        self.job = job
        self.image = image
    }
}
