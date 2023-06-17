//
//  ViewController.swift
//  liveap
//
//  Created by 森掛 on 2023/05/30.
//

import UIKit
import Foundation
import FSCalendar
import RealmSwift

class CalendarViewController: UIViewController,FSCalendarDataSource,FSCalendarDelegate {
    
    let realm = try! Realm()
    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var eventLabel: UILabel!
    let df = DateFormatter()
    var realmDatas = [RealmData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        calendar.dataSource = self
        calendar.delegate = self
        view.addSubview(calendar)
        view.addSubview(dateLabel)
        
        var realmDataas = Array(realm.objects(RealmData.self))
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
        var eventDateArray = realmDatas.filter({ date == $0.eventDate })
        var entryResultArray = realmDatas.filter({ date == $0.entryResultDate })
        var moneyDateArray = realmDatas.filter({ date == $0.moneyDate })
        
        if eventDateArray.isEmpty == false {
            eventLabel.text = eventDateArray[0].eventTitle
        }else if entryResultArray.isEmpty == false {
            eventLabel.text = "\(eventDateArray[0].eventTitle) + 当落日"
        }else if moneyDateArray.isEmpty == false {
            eventLabel.text = "\(eventDateArray[0].eventTitle) + 入金日"
        }else {
            eventLabel.text = ""
        }
        
           df.dateFormat = "yyyy-MM-dd"
           dateLabel.text = df.string(from: date)
       }
    
}
