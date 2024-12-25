//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Kadir Duraklı on 14.07.2024.
//

import UIKit

class detailsVC: UIViewController {
    
    var selectedSimpson : Simpsons! = nil

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = selectedSimpson.name
        jobLabel.text = selectedSimpson.job
        imageView.image = selectedSimpson.image
    }
    

}
