//
//  ServiceDateFormatter.swift
//  ServicesApp
//
//  Created by Praveen A on 06/03/26.
//

import Foundation

struct ServiceDateFormatter {

    private static let isoDateFormatter: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        return formatter
    }()

    // Time formatter
    private static let timeFormatter: DateFormatter = {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm a"
        return timeFormatter
    }()

    // Full date formatter
    private static let fullTimeFormatter: DateFormatter = {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "dd/MM/yyyy, h:mm a"
        return timeFormatter
    }()

    static func formatted(_ isoDate: String) -> String {

        guard let data = isoDateFormatter.date(from: isoDate) else {
            return isoDate
        }

        let time = timeFormatter.string(from: data)
        if data.isToday {
            return "Today, \(time)"
        }

        if data.isYesterday {
            return "Yesterday, \(time)"
        }

        if data.isTomorrow {
            return "Tomorrow, \(time)"
        }

        return fullTimeFormatter.string(from: data)
    }
}
