//
//  DateTimePickerViewController.swift
//  DateAndTimePicker
//
//  Created by Rimil Dey on 19/11/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class DateTimePickerViewController: UIViewController {
    
    // MARK: - view did load

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        
        let currentDate = dateFormatter.string(from: datePicker.date)
        
        dateLabel.text = "Today is : \(currentDate)"
        
        if let date = model.date, let time = model.time {
            datePicker.date = date
            timePicker.date = time
        }
    }
    
    // MARK: - outlets
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    // MARK: - interactions
    
    @IBAction func tapCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
