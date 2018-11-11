//
//  ENDSViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 11/11/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class ENDSViewController: UIViewController {
    
    var tenPressed = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Specific END Editing"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func ClrButtonTapped(_ sender: UIButton) {
        numberLabel.text = ""
    }
    
    @IBAction func DelButtonTapped(_ sender: Any) {
        let curLabel = String(numberLabel.text!)
        if curLabel[curLabel.index(before: curLabel.endIndex)] != "0"
        {
        let index = curLabel.index(curLabel.startIndex, offsetBy: curLabel.count - 3)
        let newLabel = curLabel[..<index]
        numberLabel.text = String(newLabel)
        }
        else {
            let index = curLabel.index(curLabel.startIndex, offsetBy: curLabel.count - 4)
            let newLabel = curLabel[..<index]
            numberLabel.text = String(newLabel)
        }
    }
    
    
    @IBAction func numberTapped(_ sender: UIButton) {
        numberLabel.text = numberLabel.text! + "  " + (sender.titleLabel?.text!)!
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
