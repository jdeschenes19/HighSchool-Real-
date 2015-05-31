//
//  FirstViewController.swift
//  High-School-Schedule
//
//  Created by JAM2 on 5/30/15.
//  Copyright (c) 2015 JAM2. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    
    var weekday = 0

    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateArray()
        
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
            println(weekday)
        } else {
            println("bad input")
        }
        
        table.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var returnNum = 0
        
        if weekday == 2 || weekday == 7 || weekday == 1 {
            
            returnNum = 9
            
        } else if weekday == 3 {
            
            returnNum = 7
            
        } else if weekday == 4 {
            
            returnNum = 7
            
        } else if weekday == 5 {
            
            returnNum = 9
            
        } else if weekday == 6 {
            
            returnNum = 8
            
        }
        
        return returnNum + 1
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = classArray[indexPath.row]
        
        return cell
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        table.reloadData()
        
    }

}

