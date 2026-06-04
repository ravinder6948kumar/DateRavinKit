// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public final class DateRavinKit {

    public static func convert(
        _ input: String,
        to outputFormat: String
    ) throws -> String {

        guard let date = DateParser.parse(input) else {
            throw DateRavinKitError.invalidInputDate
        }

        // Validate format
        let formatter = FormatterFactory.shared
            .formatter(format: outputFormat)

        formatter.dateFormat = outputFormat

        let result = formatter.string(from: date)

        if result.isEmpty {
            throw DateRavinKitError.invalidOutputFormat
        }

        return result
    }
}
