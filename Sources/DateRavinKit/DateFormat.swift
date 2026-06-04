//
//  DateFormat.swift
//  DateRavinKit
//
//  Created by Ravinder Kumar on 04/06/26.
//

public enum DateFormat: String, CaseIterable {

    case iso8601 = "yyyy-MM-dd'T'HH:mm:ssZ"
    case iso8601Millis = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"

    case dateOnly = "yyyy-MM-dd"

    case slashDate = "dd/MM/yyyy"

    case display = "dd MMM yyyy"

    case displayWithTime = "dd MMM yyyy HH:mm"

    case server = "yyyy-MM-dd HH:mm:ss"
}
