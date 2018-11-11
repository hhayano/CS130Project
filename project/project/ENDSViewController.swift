//
//  ENDSViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 11/11/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class ENDSViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Specific END Editing"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func CButtonTapped(_ sender: UIButton) {
        numberLabel.text = ""
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        numberLabel.text = numberLabel.text! + String(sender.tag)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
