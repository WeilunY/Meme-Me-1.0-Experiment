//
//  SentMemeTableViewController.swift
//  Meme Me 2.0
//
//  Created by Weilun Yao on 7/3/18.
//  Copyright © 2018 Weilun Yao. All rights reserved.
//

import UIKit

class SentMemeTableViewController: UITableViewController {

    // MARK: Properties
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell")!
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = meme.topText + " " + meme.bottomText
        cell.imageView?.image = meme.memedImage
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = self.storyboard!.instantiateViewController(withIdentifier: "detail") as! DetailMemeViewController
        detailVC.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
    // MARK: Actions
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createNewMeme(_ sender: Any) {
        performSegue(withIdentifier: "newOne", sender: sender)
    }
    
}
