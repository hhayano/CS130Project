//
//  DetailedEndViewController.swift
//  scoring
//
//  Created by user146389 on 11/8/18.
//  Copyright © 2018 user146389. All rights reserved.
//

import UIKit

class DetailedEndViewController: UIViewController {

    var getname = "Default"
    @IBOutlet weak var endName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        endName.text = "\(getname)"
        
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
