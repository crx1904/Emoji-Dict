//
//  ViewController.swift
//  Emoji Dict
//
//  Created by Mark Heitfeldt on 03.09.19.
//  Copyright © 2019 CRX Code. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    var emoji = ["😀","😇","😜","🧐","😩"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        tableView.dataSource = self
        tableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emoji[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selection = emoji[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: selection)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defViewCon = segue.destination as! DefViewController
        defViewCon.selected = sender as! String
        
    }
    
}

