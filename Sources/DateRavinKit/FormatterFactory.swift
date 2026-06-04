//
//  FormatterFactory.swift
//  DateRavinKit
//
//  Created by Ravinder Kumar on 04/06/26.
//

import Foundation

final class FormatterFactory {

    nonisolated(unsafe) static let shared = FormatterFactory()

    private init() {}

    func formatter(

        format: String

    ) -> DateFormatter {

        let formatter = DateFormatter()

        formatter.locale = Locale(

            identifier: "en_US_POSIX"

        )

        formatter.dateFormat = format

        return formatter

    }

}
