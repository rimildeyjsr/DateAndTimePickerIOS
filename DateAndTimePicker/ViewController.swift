//
//  ViewController.swift
//  DateAndTimePicker
//
//  Created by Rimil Dey on 19/11/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d, yyyy 'at' h:mm a"
        dateLabel.text = dateFormatter.string(from: Date())
        
    }
    
    // MARK: - outlets
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func unwindToViewController(sender: UIStoryboardSegue) {
        let source = sender.source as! DateTimePickerViewController
        let dateFormatter = DateFormatter()
        let timeFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .long
        timeFormatter.timeStyle = .short

        model.date = source.datePicker.date
        model.time = source.timePicker.date
        
        let selectedDate = dateFormatter.string(from: model.date!)
        let selectedTime = timeFormatter.string(from: model.time!)
        
        dateLabel.text = "\(selectedDate) at \(selectedTime)"
        
    }

}

