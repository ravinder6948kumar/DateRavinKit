// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public final class DateRavinKit {

    public static func convert(
        _ input: String,
        to outputFormat: DateFormat
    ) -> String? {

        guard let date =
            DateParser.parse(input)
        else {
            return nil
        }

        let formatter =
            FormatterFactory.shared
                .formatter(
                    format:
                    outputFormat.rawValue
                )

        return formatter.string(
            from: date
        )
    }
}
