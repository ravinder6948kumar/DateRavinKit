//
//  DateRavinKitError.swift
//  DateRavinKit
//
//  Created by Ravinder Kumar on 04/06/26.
//

public enum DateRavinKitError: Error, LocalizedError {

    

    case invalidInputDate

    case invalidOutputFormat

    

    public var errorDescription: String? {

        switch self {

        case .invalidInputDate:

            return "Unable to detect the input date format."

            

        case .invalidOutputFormat:

            return "Invalid output date format."

        }

    }

}
