//
//  DefViewController.swift
//  Emoji Dict
//
//  Created by Mark Heitfeldt on 04.09.19.
//  Copyright © 2019 CRX Code. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {

    var selected = "NO EMOJI"
    
    @IBOutlet weak var defLabel: UILabel!
    @IBOutlet weak var emoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emoLabel.text = selected
        defLabel.text = "DEFINITION"
        
        if selected == "😀" {
            defLabel.text = "lachend"
        }
        if selected == "😇" {
            defLabel.text = "unschuldig"
        }
        if selected == "😜" {
            defLabel.text = "just kidding"
        }
        if selected == "🧐" {
            defLabel.text = "misstrauisch/neugierig"
        }
        if selected == "😩" {
            defLabel.text = "erschöpft/enttäuscht"
        }
        
    }
    
}
