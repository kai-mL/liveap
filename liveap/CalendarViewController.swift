//
//  ViewController.swift
//  liveap
//
//  Created by 森掛 on 2023/05/30.
//

import UIKit
import FSCalendar

class CalendarViewController: UIViewController {
    
    @IBOutlet weak var calendar: FSCalendar!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CalendarView()
            .frame(height: 400)
    }
    


}

