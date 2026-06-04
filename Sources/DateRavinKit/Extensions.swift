//
//  Extensions.swift
//  DateRavinKit
//
//  Created by Ravinder Kumar on 04/06/26.
//

import Foundation

public extension String {

    func dateFormat(
        to format: DateFormat
    ) -> String? {

        DateRavinKit.convert(
            self,
            to: format
        )
    }
}
