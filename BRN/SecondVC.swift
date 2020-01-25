//
//  SecondVC.swift
//  BRN
//
//  Created by THOTA NAGARAJU on 11/4/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class SecondVC: ViewController {

    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var studentIdLbl: UILabel!
    @IBOutlet weak var roleLbl: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
   
    override func viewDidLoad() {
       super.viewDidLoad()
        
        nameLbl.text = FormData.shared.convertedData["firstName"]
        email.text   = FormData.shared.convertedData["batchID"]
        studentIdLbl.text = FormData.shared.convertedData["role"]
        roleLbl.text = FormData.shared.convertedData["registeredEmail"]
               
        // Do any additional setup after loading the view.
    }
 
    @IBAction func NextTo4thVc(_ sender: Any) {
        
        let fvc = self.storyboard?.instantiateViewController(withIdentifier: "fvc") as!
        FourthViewController
        
        FormData.shared.attendanceDetails(funcName:"getUserAttendance", studentIDByAdmin: "NoValue")
        present(fvc, animated: true) {
            
        }
    }
    
    
    @IBAction func BackTo1stVc(_ sender: Any) {
        
        dismiss(animated: true) {
            
        }
    }
    
    
}

