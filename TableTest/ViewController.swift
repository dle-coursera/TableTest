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

struct FruitSection {
    var name: String
    var fruits: [FruitModel]
}

class ViewController: UITableViewController {
    var data: [FruitSection] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = ["Acai",
                 "Aceola",
                 "Apple",
                 "Apricots",
                 "Avocado"]
        
        let b = ["Banana",
                 "Blackberry",
                 "Blueberries"]
        
        let c = ["Camu Camu berry",
                 "Cherries",
                 "Coconut",
                 "Cranberry",
                 "Cucumber",
                 "Currents"]
        
        let d = [ "Dates",
                  "Durian"]
        
        let f = ["Fig"]
        
        let g = ["Goji berries",
                 "Gooseberry",
                 "Grapefruit",
                 "Grapes"]
        
        let j = ["Jackfruit"]
        
        let k = ["Kiwi",
                 "Kumquat"]
        
        let l = ["Lemon",
                 "Lime",
                 "Lucuma",
                 "Lychee "]
        
        let m = ["Mango",
                 "Mangosteen",
                 "Melon",
                 "Mulberry"]
        
        let n = ["Nectarine"]
        
        let o = ["Orange"]
        
        let p = ["Papaya",
                 "Passion Fruit",
                 "Peach",
                 "Pear",
                 "Pineapple",
                 "Plum",
                 "Pomegranate",
                 "Pomelo",
                 "Prickly Pear",
                 "Prunes"]
        
        let r = ["Raspberries"]
        let s = ["Strawberries"]
        let w = ["Watermelon"]
        
        let sections = [a, b, c, d, f, g, j, k, l, m, n, o, p, r, s, w]
    
        for section in sections {
            let firstItem = section.first!
            let sectionTitle = String(firstItem[firstItem.startIndex.advancedBy(0)]).uppercaseString
            var fruits: [FruitModel] = []
            
            for name in section {
                fruits.append(FruitModel(name: name, refreshCount: 0))
            }
            
            let fruitSection = FruitSection(name: sectionTitle, fruits: fruits)
            data.append(fruitSection)
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
        
        let model = data[indexPath.section].fruits[indexPath.row]
        cell.descriptionLabel.text =  model.name
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].fruits.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return data.count
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var fruitSection = data[indexPath.section]
        var fruits = fruitSection.fruits
        var model = fruits[indexPath.row]

        var title: String = model.name
        for _ in 0..<1 {
            title = "\(title) \(model.name)"
        }

        model.name = title
        
        fruits[indexPath.row] = model
        fruitSection.fruits = fruits
        data[indexPath.section] = fruitSection

        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].name
    }
}