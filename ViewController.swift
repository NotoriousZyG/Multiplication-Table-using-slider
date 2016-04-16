//
//  ViewController.swift
//  Multiplication Table
//
//  Created by Roman Parajuli on 7/4/15.
//  Copyright (c) 2015 Roman Parajuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var slider: UISlider!
    @IBAction func sliderValue(sender: AnyObject) {
        table.reloadData() // runs all command again i.e relodes data
        
        
        
    }
    
    @IBOutlet weak var table: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")

        let timesTable = Int(slider.value * 20)
        
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1 ) ) // space between '+' and '1' is required here
        return cell
    }
    

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

