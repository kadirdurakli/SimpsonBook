//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Kadir Duraklı on 14.07.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var simpsonNames : [Simpsons] = []
    var chosenSimpson : Simpsons! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let bart = Simpsons(name: "bart", job: "footballer", image: UIImage(named: "bart"))
        let homer = Simpsons(name: "homer", job: "basketballer", image: UIImage(named: "homer"))
        let marge = Simpsons(name: "marge", job: "farmer", image: UIImage(named: "marge"))
       
        simpsonNames.append(bart)
        simpsonNames.append(homer)
        simpsonNames.append(marge)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = simpsonNames[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonNames[indexPath.row]
        performSegue(withIdentifier: "todetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "todetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
}

