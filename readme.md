[![Tests](https://github.com/sentryco/PageControl/actions/workflows/Tests.yml/badge.svg)](https://github.com/sentryco/PageControl/actions/workflows/Tests.yml)
[![codebeat badge](https://codebeat.co/badges/8b4f9e7f-7541-449b-b51e-c90a6bb4d940)](https://codebeat.co/projects/github-com-sentryco-pagecontrol-main)

# 🚥 PageControl in SwiftUI

This is a custom SwiftUI View called `PageControl`. It is used to represent a series of pages or a carousel of views, where each page is represented by a dot. The active page's dot is highlighted.

## Features

- **Customizable**: You can customize the color of the dots, the color of the active dot, and whether the control hides itself when there is only one page.
- **Interactive**: Tapping on a dot will animate to that page.
- **SwiftUI**: Built entirely with SwiftUI, it can be used across all Apple platforms.

## Installation

To install this package, add the following line to the `dependencies` array in your `Package.swift` file:

```swift
.package(url: "https://github.com/sentryco/PageControl", .branch("main"))
```

## How to Use

To use this `PageControl`, initialize it with the following parameters:

- `currentPage`: The initial page that the control should display. Default is 0.
- `numberOfPages`: The total number of pages that the control should display. Default is 0.
- `hidesForSinglePage`: A boolean value that determines whether the control hides itself when there is only one page. Default is true.
- `pageIndicatorTintColor`: The color of the dots in the control. Default is gray.
- `currentPageIndicatorTintColor`: The color of the active dot in the control. Default is white.

Here is an example of how to use it:

```swift
PageControl(currentPage: 1, numberOfPages: 5)
   .padding()
   .frame(width: 300, height: 300)
```

This will create a `PageControl` with 5 pages, with the second page as the current page. The control will be 300x300 points, with padding around it.

## Preview

You can preview this control in Xcode by using the `#Preview` directive. Here is an example:

```swift
#Preview(traits: .fixedLayout(width: 300, height: 300)) {
   PageControl(currentPage: 1, numberOfPages: 5)
      .padding()
      .frame(width: 300, height: 300)
}
```

This will display a preview of the `PageControl` in the Xcode canvas.

## Constants

The `PageControl` view uses some constants for its design:

- `dotDiameter`: The diameter of each dot in the control. Default is 8.0.
- `dotSpacing`: The space between each dot in the control. Default is 0.0.
- `animationDuration`: The duration of the animation used to update the control. Default is 0.08.

These constants can be adjusted to fit the design of your app.

## Links:

- [DSFPagerControl](https://github.com/dagronf/DSFPagerControl) - complex, feature rich
- [NSPageControl](https://github.com/nerd0geek1/NSPageControl) - improved? clone of DTPageControl
- [BFPageControl](https://github.com/bfolder/BFPageControl) - objc, complex code
- [DTPageControl](https://github.com/demianturner/DTPageControl) - simple, minimal code, [example code](https://github.com/demianturner/PageControlExample)
- [NSPageController tutorial](http://www.gamesforgeeks.com/2017/03/using-nspagecontroller/)
- [NSPageController documentation](https://developer.apple.com/documentation/appkit/nspagecontroller)
- [NSPageController tutorial](http://www.gamesforgeeks.com/2017/03/using-nspagecontroller/) 

## License

This project is licensed under the terms of the MIT license. For more details, see the [LICENSE](LICENSE) file.
