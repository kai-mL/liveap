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
    
    func makeUIView(context: Context) -> UIView {
        
        typealias UIViewType = FSCalendar
        
        let fsCalendar = FSCalendar()
            
        return fsCalendar
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
