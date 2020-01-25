//
//  FourthViewController.swift
//  BRN
//
//  Created by THOTA NAGARAJU on 11/27/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    @IBAction func BackToHome(_ sender: Any) {
        
        dismiss(animated: true) {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        label1.text = FormData.shared.convertedData[0][""]
//        label1.text = FormData.shared.convertedData[]
//        label1.text = FormData.shared.convertedData[]
//        label1.text = FormData.shared.convertedData[]
//        label1.text = FormData.shared.convertedData[]
//        label1.text = FormData.shared.convertedData[]
//        label1.text = FormData.shared.convertedData[]
//        label1.text = FormData.shared.convertedData[]
//        label1.text = FormData.shared.convertedData[]

        // Do any additional setup after loading the view.
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
