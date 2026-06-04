import Foundation
import Testing
@testable import DateRavinKit

@Suite("DateFormat")
struct DateFormatTests {

    private func expectedOutput(
        for date: Date,
        format: DateFormat
    ) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = format.rawValue
        return formatter.string(from: date)
    }

    private func assertConversion(
        input: String,
        outputFormat: DateFormat
    ) {
        guard let date = DateParser.parse(input) else {
            Issue.record("DateParser failed for \"\(input)\"")
            return
        }

        let result = DateRavinKit.convert(
            input,
            to: outputFormat
        )
        let expected = expectedOutput(
            for: date,
            format: outputFormat
        )

        print("\(outputFormat): \(input) -> \(result ?? "nil")")

        #expect(
            result == expected,
            "Expected \"\(expected)\", got \"\(result ?? "nil")\""
        )
    }

    @Test func iso8601() {
        let input = "2024-06-04T12:00:00+0000"

        assertConversion(input: input, outputFormat: .iso8601)
        assertConversion(input: input, outputFormat: .dateOnly)
        assertConversion(input: input, outputFormat: .server)
    }

    @Test func iso8601Millis() {
        let input = "2024-06-04T12:00:00.123+0000"

        assertConversion(input: input, outputFormat: .iso8601Millis)
        assertConversion(input: input, outputFormat: .dateOnly)
    }

    @Test func dateOnly() {
        let input = "2024-06-04"

        assertConversion(input: input, outputFormat: .dateOnly)
        assertConversion(input: input, outputFormat: .display)
    }

    @Test func slashDate() {
        let input = "04/06/2024"

        assertConversion(input: input, outputFormat: .slashDate)
        assertConversion(input: input, outputFormat: .dateOnly)
    }

    @Test func display() {
        let input = "04 Jun 2024"

        assertConversion(input: input, outputFormat: .display)
        assertConversion(input: input, outputFormat: .dateOnly)
    }

    @Test func displayWithTime() {
        let input = "04 Jun 2024 12:00"

        assertConversion(input: input, outputFormat: .displayWithTime)
        assertConversion(input: input, outputFormat: .display)
    }

    @Test func server() {
        let input = "2024-06-04 12:00:00"

        assertConversion(input: input, outputFormat: .server)
        assertConversion(input: input, outputFormat: .dateOnly)
    }

    @Test func printAllDateFormats() {
        let samples: [(DateFormat, String)] = [
            (.iso8601, "2024-06-04T12:00:00+0000"),
            (.iso8601Millis, "2024-06-04T12:00:00.123+0000"),
            (.dateOnly, "2024-06-04"),
            (.slashDate, "04/06/2024"),
            (.display, "04 Jun 2024"),
            (.displayWithTime, "04 Jun 2024 12:00"),
            (.server, "2024-06-04 12:00:00"),
        ]

        print("--- DateRavinKit conversions ---")

        for (format, input) in samples {
            for outputFormat in DateFormat.allCases {
                let result = DateRavinKit.convert(
                    input,
                    to: outputFormat
                )
                print("\(format.rawValue) [\(input)] -> \(outputFormat): \(result ?? "nil")")
            }
            print("")
        }
    }

    @Test func stringExtensionMatchesConvert() {
        let input = "2024-06-04T12:00:00+0000"

        #expect(
            input.dateFormat(to: .dateOnly)
                == DateRavinKit.convert(
                    input,
                    to: .dateOnly
                )
        )
    }

    @Test func invalidInputReturnsNil() {
        #expect(
            DateRavinKit.convert(
                "not-a-date",
                to: .dateOnly
            ) == nil
        )
        #expect(DateParser.parse("not-a-date") == nil)
    }
}
