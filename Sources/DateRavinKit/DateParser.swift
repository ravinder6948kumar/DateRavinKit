//
//  DateParser.swift
//  DateRavinKit
//
//  Created by Ravinder Kumar on 04/06/26.
//


import Foundation

public final class DateParser {

    public static func parse(
        _ dateString: String
    ) -> Date? {

        let formatterFactory =
            FormatterFactory.shared

        for format in DateFormat.allCases {

            let formatter =
                formatterFactory.formatter(
                    format: format.rawValue
                )

            if let date =
                formatter.date(
                    from: dateString
                ) {

                return date
            }
        }

        return nil
    }
}
