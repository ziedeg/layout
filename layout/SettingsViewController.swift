//
//  SettingsViewController.swift
//  layout
//
//  Created by zied alghamdi on 11/19/19.
//  Copyright © 2019 zied alghamdi. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    struct Whatever: Decodable{
        let Items: [Configuration]
        let Count: Int
        let ScannedCount: Int
    }
    
    struct Configuration: Decodable {
        let User: String
        let HumidityThreshold: Int
        let TemperatureThreshold: Int
        let AirQualityThreshold: Int
        let NotificationsEnabled: Bool
        let Email: String
    }
    
    // Declare text fields
    @IBOutlet weak var setTemp: UITextField!
    @IBOutlet weak var setHum: UITextField!
    @IBOutlet weak var setAir: UITextField!
    
   // var configItems:NSMutableArray = []
    override func viewDidLoad() {
        super.viewDidLoad()

       let configurationUrl =  "https://l4gv9uqwpd.execute-api.us-west-1.amazonaws.com/prod/configuration"
               
                
              // https://api.letsbuildthatapp.com/jsondecodable/course
              
               //url constructor
               guard let url = URL(string: configurationUrl) else {return}
               
               //url session to fetch the data
               URLSession.shared.dataTask(with: url) { (data, response, err) in
                   
               //get data from the url
               guard let data = data else{return}
                
     
              
               do{
                       
                      let whatever = try JSONDecoder().decode(Whatever.self, from: data)
                let temp = whatever.Items[0].TemperatureThreshold
                let hum = whatever.Items[0].HumidityThreshold
                let airQ = whatever.Items[0].AirQualityThreshold
                
                self.setTemp.text = String(temp)
                self.setHum.text = String(hum)
                self.setAir.text = String(airQ)
              
                       }catch let jsonErr{
                           print("error serializing json:", jsonErr)
                           }
                   
                
               }.resume() //start the url session */
                
               
    }

}

