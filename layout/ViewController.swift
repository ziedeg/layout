//
//  ViewController.swift
//  layout
//
//  Created by zied alghamdi on 11/7/19.
//  Copyright © 2019 zied alghamdi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
  
    
    @IBOutlet weak var sensor1Temp: UITextField!
    
    
   /* @IBAction func getData(_ sender: Any) {
        
        let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
              
               //url constructor
               guard let url = URL(string: jsonUrlString) else {return}
               
               //url session to fetch the data
               URLSession.shared.dataTask(with: url) { (data, response, err) in
                   
                   //get data from the url
                   guard let data = data else{return}
                            
                   //serilize the data
                   do{
                       
                       let course = try JSONDecoder().decode(Course.self, from: data)
         
                       let idtest = course.name
                       self.sensor1Temp.text = idtest
        
                       }catch let jsonErr{
                           print("error serializing json:", jsonErr)
                   }
                   
                   
               }.resume() //start the url session

           }*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 

    
    
    
    
    
    
    
    }
    
    



