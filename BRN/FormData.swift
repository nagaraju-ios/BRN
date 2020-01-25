//
//  FormData.swift
//  BRN
//
//  Created by THOTA NAGARAJU on 11/27/19.
//  Copyright © 2019 THOTA NAGARAJU. All rights reserved.
//

import UIKit

class FormData: NSObject {
    
    var URLReqObj:URLRequest!
    var dataTaskObj:URLSessionDataTask!
    static var shared:FormData = FormData()
    
   // var convertedData = Pulselogin()
    var convertedData:[String:String]!
    var convertedData2:[[String:Any]]!
    
    
    
    func  Pulselogin(registeredEmail:String ,registeredPassword:String)-> [String : String]
    {
        
        
        URLReqObj = URLRequest(url: URL(string:"https:www.brninfotech.com/pulse/modules/admin/ValidateLogin.php")!)

        URLReqObj.httpMethod = "POST"

        let  dataToSend = "registeredEmail=\(registeredEmail)&registeredPassword=\(registeredPassword)&funcName=verifyLogin"

        URLReqObj.httpBody=dataToSend.data(using: String.Encoding.utf8)
        dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: {( data,ConnDetails,Error) in

            print("got data from server")

            do{
                self.convertedData = try
                    JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [String:String]


                print(self.convertedData)

            }catch
            {
                print("something went wrong")
            }
        })
        dataTaskObj.resume()
        while convertedData==nil{
        }
        return convertedData

    }
    
    
    
    // ATTENDANCE DETAILS
    
    func  attendanceDetails(funcName:String,studentIDByAdmin:String)->[[String:Any]]
    {
        
        URLReqObj = URLRequest(url: URL(string:"https:www.brninfotech.com/pulse/modules/admin/DashboardSnippets.php")!)
        
        URLReqObj.httpMethod = "POST"
        
        let  dataToSend = "funcName=\(funcName)&studentIDByAdmin=\(studentIDByAdmin)"
        
        URLReqObj.httpBody=dataToSend.data(using: String.Encoding.utf8)
        dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: {( data,ConnDetails,Error) in
            
            print("got data from server")
            
            do{
                let convertedData2 = try
                JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [[String:Any]]
                print(convertedData2)
            }catch
            {
                print("something went wrong")
            }
        })
        dataTaskObj.resume()
    while convertedData2==nil{
    }
    return convertedData2
    }
    
    
    private override init() {
        super.init()
    }
    

}
