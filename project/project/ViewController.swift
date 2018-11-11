//
//  ViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 11/9/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "next", style: .plain, target: self, action: #selector(handleStart))
        
        navigationItem.title = "Home"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func handleStart() {
        let start = storyboard?.instantiateViewController(withIdentifier: "startID") as! startViewController
        
        navigationController?.pushViewController(start, animated: true)
    }


}

