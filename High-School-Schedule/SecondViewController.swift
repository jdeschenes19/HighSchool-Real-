//
//  SecondViewController.swift
//  High-School-Schedule
//
//  Created by JAM2 on 5/30/15.
//  Copyright (c) 2015 JAM2. All rights reserved.
//

import UIKit

var classDict = ["aPeriod": "", "bPeriod": "", "cPeriod": "", "dPeriod": "", "ePeriod": "", "fPeriod": "", "xPeriod": "", "sport": ""]

var classArray = [String]()

func updateArray() {
    
    classArray.removeAll(keepCapacity: false)
    
    classArray.append(classDict["aPeriod"]!)
    
    classArray.append(classDict["bPeriod"]!)
    
    classArray.append(classDict["cPeriod"]!)
    
    classArray.append(classDict["dPeriod"]!)
    
    classArray.append(classDict["ePeriod"]!)
    
    classArray.append(classDict["fPeriod"]!)
    
    classArray.append(classDict["xPeriod"]!)
    
    classArray.append(classDict["sport"]!)
    
    println(classDict["aPeriod"])
    
    println(classDict["bPeriod"])
    
    println(classDict["cPeriod"])
    
    println(classDict["dPeriod"])
    
    println(classDict["ePeriod"])
    
    println(classDict["fPeriod"])
    
    println(classDict["xPeriod"])
    
    println(classDict["sport"])
    
}

class SecondViewController: UIViewController {
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    func updateClasses(className:String) {
        
        classDict[className] = field.text
        
        field.text = ""
        
        updateArray()
        
    }
    
    @IBOutlet var field: UITextField!
    
    @IBAction func aPeriodButton(sender: UIButton) {
        
        updateClasses("aPeriod")
        
    }
    
    @IBAction func bPeriodButton(sender: UIButton) {
        
        updateClasses("bPeriod")
        
    }
    
    @IBAction func cPeriodButton(sender: UIButton) {
        
        updateClasses("cPeriod")
        
    }
    
    @IBAction func dPeriodButton(sender: UIButton) {
        
        updateClasses("dPeriod")
        
    }
    
    @IBAction func ePeriodButton(sender: UIButton) {
        
        updateClasses("ePeriod")
        
    }
    
    @IBAction func fPeriodButton(sender: UIButton) {
        
        updateClasses("fPeriod")
        
    }
    
    @IBAction func xPeriodButton(sender: UIButton) {
        
        updateClasses("xPeriod")
        
    }
    
    @IBAction func sportButton(sender: UIButton) {
        
        updateClasses("sport")
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateArray()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

