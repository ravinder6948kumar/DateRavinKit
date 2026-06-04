# DateRavinKit

A lightweight and powerful Swift Package for automatic date format detection, parsing, and conversion.

DateRavinKit eliminates repetitive DateFormatter code by automatically detecting input date formats and converting them into any desired output format with a simple API.

## Features

- Automatic date format detection
- ISO8601 support
- Convert between multiple date formats
- String to Date conversion
- Date to String conversion
- Timezone support
- Localized formatting
- Swift Package Manager support
- Unit tested
- Lightweight and dependency-free

## Requirements

- iOS 13.0+
- macOS 10.15+
- Swift 5.7+

## Installation

### Swift Package Manager (Xcode)

1. In Xcode, open your app project.
2. Go to **File → Add Package Dependencies…**
3. Enter the repository URL:
   `https://github.com/ravinder6948kumar/DateRavinKit.git`
4. Add the **DateRavinKit** library product to your app target.

### Swift Package Manager (Package.swift)

```swift
dependencies: [
    .package(
        url: "https://github.com/ravinder6948kumar/DateRavinKit.git",
        from: "1.0.0"
    )
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "DateRavinKit", package: "DateRavinKit")
        ]
    )
]
```

## Usage

```swift
import DateRavinKit

let result = DateRavinKit.convert(
    "2026-06-04",
    to: .display
)

print(result ?? "")
```

Output:

```text
04 Jun 2026
```

## Supported Input Formats

```text
2026-06-04
2026-06-04 15:30:00
2026-06-04T15:30:00Z
2026-06-04T15:30:00.000Z
04/06/2026
06/04/2026
04 Jun 2026
04 Jun 2026 15:30
```

## Roadmap

- Relative date formatting
- Business day calculations
- Advanced timezone conversions
- SwiftUI support
- Actor-based formatter cache
- DocC documentation

## License

MIT License
