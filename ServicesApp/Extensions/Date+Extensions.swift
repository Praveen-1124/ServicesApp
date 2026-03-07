//
//  Date+Extensions.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import Foundation

extension Date {

    var isToday: Bool {
        Calendar.current.isDateInToday(self)
    }

    var isTomorrow: Bool {
        Calendar.current.isDateInTomorrow(self)
    }

    var isYesterday: Bool {
        Calendar.current.isDateInYesterday(self)
    }
}
