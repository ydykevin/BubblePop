//
//  HomeViewController.swift
//  BubblePop
//
//  Created by 益达达 on 3/5/19.
//  Copyright © 2019 ydykevin. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var play: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        //userName.addTarget(self, action: Selector(("nameChanged:")), for: .editingChanged)




        // Do any additional setup after loading the view.
    }

    @IBAction func nameChanged(_ sender: Any) {
        if(userName.text != "") {
            play.isEnabled = true
        } else {
            play.isEnabled = false
        }
    }


}
