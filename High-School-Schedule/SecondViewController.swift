//
//  SecondViewController.swift
//  High-School-Schedule
//
//  Created by JAM2 on 5/30/15.
//  Copyright (c) 2015 JAM2. All rights reserved.
//

import UIKit

var classDict = ["aPeriod": "", "bPeriod": "", "cPeriod": "", "dPeriod": "", "ePeriod": "", "fPeriod": "", "xPeriod": "", "sport": ""]

var classArray = ["A Period", "", "", "", "", "", "", "", ""]

class SecondViewController: UIViewController {
    
    var weekday = 0
    
    func updateArray() {
        
        if weekday == 2 || weekday == 7 || weekday == 1 || weekday == 0 {
            
            classArray.removeAll(keepCapacity: false)
            
            classArray.append(classDict["xPeriod"]!)
            
            classArray.append(classDict["aPeriod"]!)
            
            classArray.append(classDict["bPeriod"]!)
            
            classArray.append("Morning Meeting")
            
            classArray.append(classDict["cPeriod"]!)
            
            classArray.append(classDict["dPeriod"]!)
            
            classArray.append("Lunch")
            
            classArray.append(classDict["ePeriod"]!)
            
            classArray.append(classDict["fPeriod"]!)
            
            classArray.append(classDict["sport"]!)
            
            println(classArray)
            
        } else if weekday == 3 {
            
            classArray.removeAll(keepCapacity: false)
            
            classArray.append("M Period")
            
            classArray.append(classDict["aPeriod"]!)
            
            classArray.append("Advisee")
            
            classArray.append(classDict["cPeriod"]!)
            
            classArray.append(classDict["xPeriod"]!)
            
            classArray.append("Lunch")
            
            classArray.append(classDict["fPeriod"]!)
            
        } else if weekday == 4 {
            
            classArray.removeAll(keepCapacity: false)
            
            classArray.append(classDict["aPeriod"]!)
            
            classArray.append(classDict["dPeriod"]!)
            
            classArray.append(classDict["xPeriod"]!)
            
            classArray.append("Lunch")
            
            classArray.append(classDict["fPeriod"]!)
            
        } else if weekday == 5 {
            
            classArray.removeAll(keepCapacity: false)
            
            classArray.append(classDict["dPeriod"]!)
            
            classArray.append(classDict["aPeriod"]!)
            
            classArray.append("Advisee")
            
            classArray.append(classDict["fPeriod"]!)
            
            classArray.append(classDict["cPeriod"]!)
            
            classArray.append(classDict["xPeriod"]!)
            
            classArray.append("Lunch")
            
            classArray.append(classDict["bPeriod"]!)
            
            classArray.append(classDict["ePeriod"]!)
            
        } else if weekday == 6 {
            
            classArray.append(classDict["bPeriod"]!)
            
            classArray.append(classDict["fPeriod"]!)
            
            classArray.append("Assembly")
            
            classArray.append(classDict["ePeriod"]!)
            
            classArray.append(classDict["xPeriod"]!)
            
            classArray.append("Lunch")
            
            classArray.append(classDict["cPeriod"]!)
            
            classArray.append(classDict["dPeriod"]!)
            
        }
        
        defaults.setObject(classArray, forKey: "storedClassArray")
        
        defaults.setObject(classDict, forKey: "storedClassDict")
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    func updateClasses(className:String) {
        
        classDict[className] = field.text
        
        field.text = ""
        
        updateArray()
        
        println(classDict["aPeriod"])
        
    }
    
    @IBOutlet var field: UITextField!
    
    @IBAction func aPeriodButton(sender: UIButton) {
        
        updateClasses("aPeriod")
        
        println(classDict["aPeriod"])
        
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
        
        println("View did load")
        
        var DateInFormat:String = ""
        
        var todaysDate:NSDate = NSDate()
        var dateFormatter:NSDateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        DateInFormat = dateFormatter.stringFromDate(todaysDate)
        
        func getDayOfWeek(today:String)->Int? {
            
            let formatter  = NSDateFormatter()
            formatter.dateFormat = "yyyy-MM-dd"
            if let todayDate = formatter.dateFromString(today) {
                let myCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)!
                let myComponents = myCalendar.components(.CalendarUnitWeekday, fromDate: todayDate)
                let weekDay = myComponents.weekday
                return weekDay
            } else {
                return nil
            }
        }
        
        
        if let weekday = getDayOfWeek(DateInFormat) {
            println("Weekday is \(weekday) on second view controller.")
        } else {
            println("bad input")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

