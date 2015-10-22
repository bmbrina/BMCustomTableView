//
//  ViewController.swift
//  BMCustomTableView
//
//  Created by Barbara M Brina on 10/22/2015.
//  Copyright (c) 2015 Barbara M Brina. All rights reserved.
//

import UIKit
import BMCustomTableView
import RandomColorSwift

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    //MARK: Variables
    var colors: [UIColor]!
    
    //MARK: Outlets
    @IBOutlet weak var customTableView: BMCustomTableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colors = randomColorsCount(20, hue: .Random, luminosity: .Light)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomTableViewCell
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        customTableView.customizeCell(cell)
        
    }


}

