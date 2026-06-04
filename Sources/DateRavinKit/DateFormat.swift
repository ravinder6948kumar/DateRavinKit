//
//  DateFormat.swift
//  DateRavinKit
//
//  Created by Ravinder Kumar on 04/06/26.
//

public enum DateFormat: String, CaseIterable {

    // ISO8601
    case iso8601 = "yyyy-MM-dd'T'HH:mm:ssZ"
    case iso8601Millis = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    case iso8601UTC = "yyyy-MM-dd'T'HH:mm:ss'Z'"
    case iso8601UTCMillis = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"

    // Server
    case server = "yyyy-MM-dd HH:mm:ss"
    case serverMillis = "yyyy-MM-dd HH:mm:ss.SSS"

    // Standard
    case dateOnly = "yyyy-MM-dd"
    case dateOnlySlash = "yyyy/MM/dd"

    // European
    case ddMMyyyy = "dd/MM/yyyy"
    case ddMMyyyyDash = "dd-MM-yyyy"

    // US
    case mmddyyyy = "MM/dd/yyyy"
    case mmddyyyyDash = "MM-dd-yyyy"

    // Human Readable
    case display = "dd MMM yyyy"
    case displayWithTime = "dd MMM yyyy HH:mm"
    case displayLong = "dd MMMM yyyy"

    // RFC
    case rfc822 = "EEE, dd MMM yy HH:mm:ss Z"
    case rfc1123 = "EEE, dd MMM yyyy HH:mm:ss Z"

    // Time
    case timeOnly = "HH:mm:ss"
    case hourMinute = "HH:mm"

    // Month Year
    case monthYear = "MMM yyyy"
    case fullMonthYear = "MMMM yyyy"
}
