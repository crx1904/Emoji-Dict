//
//  DefViewController.swift
//  Emoji Dict
//
//  Created by Mark Heitfeldt on 04.09.19.
//  Copyright © 2019 CRX Code. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {

    var selected = Emoji()
    
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var emoLabel: UILabel!
    @IBOutlet weak var catLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emoLabel.text = selected.symbol
        defLabel.text = selected.definition
        catLabel.text = "Kategorie: \(selected.category)"
        yearLabel.text = "Jahr: \(selected.year)"
        
    }
    
}
