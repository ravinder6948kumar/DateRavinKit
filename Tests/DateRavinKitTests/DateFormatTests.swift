import Foundation
import Testing
import DateRavinKit

import Testing
@testable import DateRavinKit

@Suite("DateRavinKit Tests")
struct DateRavinKitTests {

    @Test("Convert ISO8601 to display format")
    func convertISO8601() throws {

        let result = try DateRavinKit.convert(
            "2024-06-04T12:00:00+0000",
            to: "dd MMM yyyy"
        )

        #expect(result == "04 Jun 2024")
    }

    @Test("Convert dateOnly to display format")
    func convertDateOnly() throws {

        let result = try DateRavinKit.convert(
            "2024-06-04",
            to: "dd MMM yyyy"
        )

        #expect(result == "04 Jun 2024")
    }

    @Test("Convert slash date")
    func convertSlashDate() throws {

        let result = try DateRavinKit.convert(
            "04/06/2024",
            to: "yyyy-MM-dd"
        )

        #expect(result == "2024-06-04")
    }

    @Test("Convert server date")
    func convertServerDate() throws {

        let result = try DateRavinKit.convert(
            "2024-06-04 12:00:00",
            to: "dd MMM yyyy"
        )

        #expect(result == "04 Jun 2024")
    }

    @Test("Custom format")
    func customFormat() throws {

        let result = try DateRavinKit.convert(
            "2024-06-04",
            to: "EEEE"
        )

        #expect(result == "Tuesday")
    }

    @Test("String extension")
    func stringExtension() throws {

        let result = try "2024-06-04"
            .dateFormat(to: "dd MMM yyyy")

        #expect(result == "04 Jun 2024")
    }

    @Test("Invalid date throws")
    func invalidDate() {

        #expect(
            throws: DateRavinKitError.invalidInputDate
        ) {
            try DateRavinKit.convert(
                "invalid-date",
                to: "dd MMM yyyy"
            )
        }
    }
    
    
    @Test("Server date with milliseconds")

    func serverDateWithMilliseconds() throws {

        let result = try DateRavinKit.convert(

            "2022-08-22 17:15:45.000",

            to: "dd MMM yyyy"

        )

        #expect(result == "22 Aug 2022")

    }
}



    @Test("All supported formats convert correctly")
    func allFormats() throws {

        let inputs = [
            "2024-06-04",
            "04/06/2024",
            "04 Jun 2024",
            "2024-06-04 12:00:00",
            "2024-06-04T12:00:00+0000"
        ]

        for input in inputs {

            let result = try DateRavinKit.convert(
                input,
                to: "dd MMM yyyy"
            )

            #expect(result == "04 Jun 2024")
        }
    }
