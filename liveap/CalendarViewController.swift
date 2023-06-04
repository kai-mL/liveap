//
//  ViewController.swift
//  liveap
//
//  Created by 森掛 on 2023/05/30.
//

import UIKit
import FSCalendar
import RealmSwift
import SwiftUI

class CalendarViewController: UIViewController {
    
    let realm = try! Realm()
    @IBOutlet weak var calendar: FSCalendar!
    @State var selectedDate = Date()
    @IBOutlet var eventTitleLabel: UILabel!
  //  let RealmItems = realm.objects(RealmData.self)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CalendarView(selectedDate: selectedDate)
            .frame(height: 400)
        Text(selectedDate,style: .date)
            .font(.title)
            .padding()
        
 //       if selectedDate == RealmItems.eventDate {
//           eventTitleLabel.text = eventTitle
//       }else if selectedDate == RealmItems.entryResultDate {
//           eventTitleLabel.text = eventTitle + "当落日"
//       }else if selectedDate == RealmItems.moneyDate {
//          eventTitleLabel.text = eventTile + "入金日"
//     }
        
    }
    
}
