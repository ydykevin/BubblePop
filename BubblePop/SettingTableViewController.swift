//
//  SettingTableViewController.swift
//  BubblePop
//
//  Created by 益达达 on 3/5/19.
//  Copyright © 2019 ydykevin. All rights reserved.
//

import UIKit

class CustomSettingCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var min: UILabel!
    @IBOutlet weak var max: UILabel!
    @IBOutlet weak var curr: UILabel!
}

class SettingTableViewController: UITableViewController {
    
    let settingValue:[[String]] = [["Game Time","10","120"],["Max Bubble Number On The Screen","1","15"]]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as! CustomSettingCell
        
        cell.name.text = settingValue[indexPath.row][0]
        cell.min.text = settingValue[indexPath.row][1]
        cell.max.text = settingValue[indexPath.row][2]
        // Configure the cell...

        return cell
    }
 

}
