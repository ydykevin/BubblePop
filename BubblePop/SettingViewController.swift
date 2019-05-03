//
//  SettingViewController.swift
//  BubblePop
//
//  Created by 益达达 on 3/5/19.
//  Copyright © 2019 ydykevin. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var currTime: UILabel!
    @IBOutlet weak var bubbleSilder: UISlider!
    @IBOutlet weak var currBubble: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeSlider.minimumValue = 10
        timeSlider.maximumValue = 120
        timeSlider.value = 60
        bubbleSilder.minimumValue = 1
        bubbleSilder.maximumValue = 15
        bubbleSilder.value = 15
        
    }
    
    
    @IBAction func timeChanged(_ sender: Any) {
        currTime.text = String(Int(timeSlider.value))
    }
    
    
    @IBAction func bubbleChanged(_ sender: Any) {
        currBubble.text = String(Int(bubbleSilder.value))
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
