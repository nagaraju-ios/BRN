//
//  ViewController.swift
//  BRN
//
//  Created by THOTA NAGARAJU on 11/4/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var URLReqObj:URLRequest!
    var dataTaskObj:URLSessionDataTask!
    
  
 
    var data=[String:String]()
    
    
   
    @IBOutlet weak var PasswordTF: UITextField!
    @IBOutlet weak var UserNameTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    

        // Do any additional setup after loading the view, typically from a nib.
    }

     
    @IBAction func LoginDetails(_ sender: Any) {
        
        print("fdxfg")
        FormData.shared.Pulselogin(registeredEmail: (UserNameTF.text!), registeredPassword: (PasswordTF.text!))
       // FormData.shared.attendanceDetails()
     let targetVC = self.storyboard?.instantiateViewController(withIdentifier: "abcd") as! SecondVC
       
      
        present(targetVC, animated: true){
            
        }
        
    }

    @IBAction func CreateAC(_ sender: Any) {
        
    
    }
    
  
    
    
    


//
//    //   ATTENDANCE DETAILS
//
//    func  attendanceDetails() -> [[String : Any]]
//    {
//        var convertedData:[[String:Any]]!
//
//        URLReqObj = URLRequest(url: URL(string:"https:www.brninfotech.com/pulse/modules/admin/DashboardSnippets.php")!)
//
//        URLReqObj.httpMethod = "POST"
//
//        let  dataToSend = "funcName=getUserAttendance&studentIDByAdmin=NoValue"
//
//        URLReqObj.httpBody=dataToSend.data(using: String.Encoding.utf8)
//        dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: {( data,ConnDetails,Error) in
//
//            print("got data from server")
//
//            do{
//                convertedData = try
//                    JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as? [[String:Any]]
//                print(convertedData)
//
//            }catch
//            {
//                print("something went wrong")
//            }
//        })
//        dataTaskObj.resume()
//
//        while convertedData==nil{
//        }
//        return convertedData
//    }

    
    }





