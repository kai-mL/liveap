//
//  AddScheduleViewController.swift
//  liveap
//
//  Created by 森掛 on 2023/06/01.
//

import UIKit
import RealmSwift

class AddScheduleViewController: UIViewController {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var eventDateLabel: UILabel!
    @IBOutlet var entryDateLabel: UILabel!
    @IBOutlet var payDateLabel: UILabel!
    @IBOutlet var payMethodLabel: UILabel!
    @IBOutlet var memoLabel: UILabel!
    @IBOutlet var eventTItleTextField: UITextField!
    @IBOutlet var payMethodTextField: UITextField!
    @IBOutlet var memoTextFIeld: UITextField!
    @IBOutlet var eventDatePicker: UIDatePicker!
    @IBOutlet var entryResultDatePicker: UIDatePicker!
    @IBOutlet var moneyDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
