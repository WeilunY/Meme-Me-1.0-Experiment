//
//  DetailMemeViewController.swift
//  Meme Me 2.0
//
//  Created by Weilun Yao on 7/3/18.
//  Copyright © 2018 Weilun Yao. All rights reserved.
//

import UIKit

class DetailMemeViewController: UIViewController {
    
    // MARK: Properties
    var meme: Meme!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = meme.memedImage
    }

   
}
