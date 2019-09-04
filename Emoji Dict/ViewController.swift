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
    
    var emoji : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        tableView.dataSource = self
        tableView.delegate = self
        emoji = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let select = emoji[indexPath.row]
        cell.textLabel?.text = select.symbol
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selection = emoji[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: selection)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defViewCon = segue.destination as! DefViewController
        defViewCon.selected = sender as! Emoji
        
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.symbol = "😀"
        emoji1.year = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "lachend"
        
        let emoji2 = Emoji()
        emoji2.symbol = "😇"
        emoji2.year = 2009
        emoji2.category = "Smiley"
        emoji2.definition = "unschuldig"
        
        let emoji3 = Emoji()
        emoji3.symbol = "😜"
        emoji3.year = 1999
        emoji3.category = "Smiley"
        emoji3.definition = "scherzend"
        
        let emoji4 = Emoji()
        emoji4.symbol = "🧐"
        emoji4.year = 2010
        emoji4.category = "Smiley"
        emoji4.definition = "skeptisch"
        
        let emoji5 = Emoji()
        emoji5.symbol = "😩"
        emoji5.year = 2006
        emoji5.category = "Smiley"
        emoji5.definition = "erschöpft"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    
    }
    
}

