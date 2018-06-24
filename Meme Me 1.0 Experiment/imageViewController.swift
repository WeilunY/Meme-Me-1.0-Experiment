//
//  imageViewController.swift
//  Meme Me 1.0 Experiment
//
//  Created by Weilun Yao on 6/24/18.
//  Copyright © 2018 Weilun Yao. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {
    
    var preview: UIImage!
    @IBOutlet weak var memePreview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memePreview.image = preview

    }

    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
   
}
