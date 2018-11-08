//
//  NewScoringRound.swift
//  CS130Project
//
//  Created by user146389 on 11/7/18.
//  Copyright © 2018 user146389. All rights reserved.
//

import UIKit

class NewScoringRound: UIView {

    @IBOutlet weak var divDrpDwnBtn: UIButton!
    @IBOutlet weak var divTblView: UITableView!
    @IBOutlet weak var scoringStart: UIButton!
    
    var divisions = ["Barebow", "Recurve", "Bowhunter", "Compound"]
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.divTblView.dataSource = self
        self.divTblView.delegate = self
        divTblView.isHidden = true
    }

    @IBAction func onClickDrpBtn(_ sender: Any) {
        if divTblView.isHidden {
            animate(toggle: true)
        } else {
            animate(toggle:false)
        }
    }
    
    func animate(toggle: Bool) {
        if toggle {
            UIView.animate(withDuration: 0.3) {
                self.divTblView.isHidden = false
            }
        } else {
            self.divTblView.isHidden = true
        }
    }
    
}


extension NewScoringRound: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return divisions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DivisionCell", for: indexPath)
        cell.textLabel?.text = divisions[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        divDrpDwnBtn.setTitle("\(divisions[indexPath.row])", for: .normal)
        animate(toggle: false)
    }
}
