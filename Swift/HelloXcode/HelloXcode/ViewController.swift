//
//  ViewController.swift
//  HelloXcode
//
//  Created by 洛洛扥 on 2017/3/8.
//  Copyright © 2017年 洛洛扥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //TODO FIX ID
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myMessage: UILabel
        myMessage = UILabel (frame:CGRect(x:30.0,y:50.0,width:300.0,height:50.0))
        myMessage.font=UIFont.systemFont(ofSize:48.0)
        myMessage.text="Hello Xcode"
        myMessage.textColor=UIColor (patternImage: UIImage(named: "Background")!)
        view.addSubview(myMessage)
        NSLog("Hello Xcode,Again")
    }

//MARK: - Method for handling memory management
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

