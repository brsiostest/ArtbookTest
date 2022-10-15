//
//  ViewController.swift
//  ArtBookTest
//
//  Created by BARIŞ AKTÜRK on 14.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

 
    
  
    

    @IBOutlet weak var add: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


    
    @IBAction func AddClicked(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
     
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let contextCell = UITableViewCell()
        contextCell.textLabel!.text =  "test"
        return contextCell
    }
    
}

