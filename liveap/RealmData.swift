//
//  UseData.swift
//  liveap
//
//  Created by 森掛 on 2023/06/01.
//

import Foundation
import RealmSwift

class RealmData: Object {
    @Persisted var eventTitle: String = ""
    @Persisted var eventDate: Date = Date()
    @Persisted var entryResultDate: Date = Date()
    @Persisted var moneyDate: Date = Date()
    @Persisted var payMethod: String = ""
    @Persisted var memoString: String = ""
}
