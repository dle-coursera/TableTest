//
//  ViewController.swift
//  TableTest
//
//  Created by David Le on 6/16/16.
//  Copyright © 2016 Test. All rights reserved.
//

import UIKit

struct FruitModel {
    var name: String
    var refreshCount: Int
}

class ViewController: UITableViewController {
    var data: [FruitModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let names = ["Acai",
                     "Aceola",
                     "Apple",
                     "Apricots",
                     "Avocado",
                    "Banana",
                    "Blackberry",
                    "Blueberries",
                    "Camu Camu berry",
                    "Cherries",
                    "Coconut",
                    "Cranberry",
                    "Cucumber",
                    "Currents",
                    "Dates",
                    "Durian",
                    "Fig",
                    "Goji berries",
                    "Gooseberry",
                    "Grapefruit",
                    "Grapes",
                    "Jackfruit",
                    "Kiwi",
                    "Kumquat",
                    "Lemon",
                    "Lime",
                    "Lucuma",
                    "Lychee ",
                    "Mango",
                    "Mangosteen",
                    "Melon",
                    "Mulberry",
                    "Nectarine",
                    "Orange",
                    "Papaya",
                    "Passion Fruit",
                    "Peach",
                    "Pear",
                    "Pineapple",
                    "Plum",
                    "Pomegranate",
                    "Pomelo",
                    "Prickly Pear",
                    "Prunes",
                    "Raspberries",
                    "Strawberries",
                    "Watermelon"]
        
        for name in names {
            data.append(FruitModel(name: name, refreshCount: 0))
        }
        
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FruitCell", forIndexPath: indexPath) as! FruitTableCell
        
        let model = data[indexPath.row]
        cell.descriptionLabel.text =  model.name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var model = data[indexPath.row]

        var title: String = model.name
        for _ in 0..<1 {
            title = "\(title) \(model.name)"
        }

        model.name = title
        data[indexPath.row] = model

        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
}