//
//  CalenderView.swift
//  
//
//  Created by 森掛 on 2023/05/30.
//

import SwiftUI
import FSCalendar
import UIKit

struct CalendarView: UIViewRepresentable {
    
    @State var selectedDate = Date()
    
    func makeUIView(context: Context) -> UIView {
        
        typealias UIViewType = FSCalendar
        
        let fsCalendar = FSCalendar()
        
        fsCalendar.delegate = context.coordinator
        fsCalendar.dataSource = context.coordinator
        
            
        return fsCalendar
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator{
            return Coordinator(self)
        }
    
    
    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {
        
        var parent: CalendarView
        
                init(_ parent:CalendarView){
                    self.parent = parent
                }
                
                func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
                    parent.selectedDate = date
                }
            }
    
}
