//
//  WelcomeViewController.swift
//  Meme Me 2.0
//
//  Created by Weilun Yao on 7/3/18.
//  Copyright © 2018 Weilun Yao. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func createMeme(_ sender: Any) {
        performSegue(withIdentifier: "create", sender: sender)
    }
    
    @IBAction func viewSentMemes(_ sender: Any) {
        performSegue(withIdentifier: "view", sender: sender)
    }
    
}
