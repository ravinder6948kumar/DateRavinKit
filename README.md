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

1. Open your app project in Xcode.
2. Go to **File → Add Package Dependencies…**
3. Paste this URL:
   ```
   https://github.com/ravinder6948kumar/DateRavinKit.git
   ```
4. Set **Dependency Rule** to **Branch → `main`**  
   (Use this until you publish a release tag like `1.0.0`.)
5. Click **Add Package**.
6. On the next screen, check **DateRavinKit** and add it to your **app target** (not only the project).

### Swift Package Manager (Package.swift)

**Option A — branch (no release tag yet):**

```swift
dependencies: [
    .package(
        url: "https://github.com/ravinder6948kumar/DateRavinKit.git",
        branch: "main"
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

**Option B — version (after you tag a release on GitHub):**

```swift
dependencies: [
    .package(
        url: "https://github.com/ravinder6948kumar/DateRavinKit.git",
        from: "1.0.0"
    )
],
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
