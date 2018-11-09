//
//  ViewController.swift
//  scoring
//
//  Created by user146389 on 11/8/18.
//  Copyright © 2018 user146389. All rights reserved.
//

import UIKit

class ScoringViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var name = ["End 1", "End 2", "End 3", "End 4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "endCell") as! endCellTableViewCell
        
        cell.endName.text! = name[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let DvC = storyboard?.instantiateViewController(withIdentifier: "DetailedEnd") as! DetailedEndViewController
        
        DvC.getname = name[indexPath.row]
        self.navigationController?.pushViewController(DvC, animated: true)
    }

}

