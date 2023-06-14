//
//  ViewController.swift
//  liveap
//
//  Created by 森掛 on 2023/05/30.
//

import UIKit
import FSCalendar
import RealmSwift

class CalendarViewController: UIViewController,FSCalendarDataSource,FSCalendarDelegate {
    
    let realm = try! Realm()
    @IBOutlet weak var calendar: FSCalendar!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var eventLabel: UILabel!
    let df = DateFormatter()
    let realmDatas = realm.objects(RealmData.self)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        calendar.dataSource = self
        calendar.delegate = self
        view.addSubview(calendar)
        view.addSubview(dateLabel)
        
        
        if df == realmDatas.eventDate {
            eventLabel.text = String(realmDatas.eventTitle)
        }else if df == realmDatas.entryResultDate {
            eventLabel.text = String(realmDatas.eventTitle + "当落日")
        }else if df == realmDatas.moneyDate {
            eventLabel.text = String(realmDatas.eventTitle + "入金日")
        }
        
    }
    
    func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
           df.dateFormat = "yyyy-MM-dd"
           dateLabel.text = df.string(from: date)
       }
    
}
