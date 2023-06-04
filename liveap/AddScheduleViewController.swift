//
//  AddScheduleViewController.swift
//  liveap
//
//  Created by 森掛 on 2023/06/01.
//

import UIKit
import RealmSwift

class AddScheduleViewController: UIViewController {
    
    let realm = try! Realm()
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
    
    @IBAction func save() {
        let item = RealmData()
        item.eventTitle = eventTItleTextField.text ?? ""
        item.eventDate = eventDatePicker.date
        item.entryResultDate = entryResultDatePicker.date
        item.moneyDate = moneyDatePicker.date
        item.payMethod = payMethodTextField.text ?? ""
        item.memoString = memoTextFIeld.text ?? ""
        createItem(item: item)
        
        self.dismiss(animated: true)
        
    }
    
    func createItem(item: RealmData) {
        try! realm.write {
            realm.add(item)
        }
    }
    
    @IBAction func backButtonAction(_sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
