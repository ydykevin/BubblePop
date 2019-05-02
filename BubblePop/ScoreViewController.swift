//
//  ScoreViewController.swift
//  BubblePop
//
//  Created by 益达达 on 2/5/19.
//  Copyright © 2019 ydykevin. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var place: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var score: UILabel!
}

class ScoreTableViewController: UITableViewController {

    let score: [Int] = [1,2,3]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return score.count
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreCell", for: indexPath) as! CustomCell
        
        //cell.textLabel?.text = score[indexPath.row].brand
        //cell.detailTextLabel?.text = String(score[indexPath.row].year)
        //cell.textLabel?.text = "1"
        //cell.detailTextLabel?.text = "Kevin"
        //cell.textLabel?.text = "1 Kevin" // fill in your value for column 1 (e.g. from an array)
        //cell.detailTextLabel?.text = "100" //
        cell.place?.text = "1"
        cell.name?.text = "Kevin"
        cell.score?.text = "100"
        
        
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
