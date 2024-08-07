import SwiftUI
/**
 * This SwiftUI PageControl view uses a HStack to layout the dots. Each dot is a Circle view with a fill color that depends on whether it represents the current page or not. The onTapGesture modifier is used to update the current page when a dot is tapped. The opacity modifier is used to hide the page control when hidesForSinglePage is true and there is only one page.
 */
public struct PageControl: View {
   /**
    * The current page of the page control.
    * - Description: The index of the currently displayed page, starting from 0. This value is a binding to allow for two-way communication between the PageControl and its parent view, enabling the parent view to update the page and react to changes when the user interacts with the PageControl.
    */
   @Binding public var currentPage: Int
   /**
    * The number of pages in the page control
    * - Description: The total number of dots representing pages in the PageControl.
    */
   public let numberOfPages: Int
   /**
    * A boolean value that determines whether the page control hides itself when there is only one page.
    * - Description: If true, the page control will be hidden when there is only one page.
    */
   public let hidesForSinglePage: Bool
   /**
    * The color of the dots in the page control.
    * - Description: This property defines the color of the inactive page indicator dots.
    */
   public let pageIndicatorTintColor: Color
   /**
    * The color of the currently active page indicator dot in the page control.
    * - Description: This property defines the color of the dot that represents the currently displayed page.
    */
   public let currentPageIndicatorTintColor: Color
   /**
    * init
    * - Description: This initializer sets up the PageControl view with the provided parameters. It binds the current page, sets the total number of pages, determines whether the control should hide for a single page, and sets the colors for the page indicators.
    * - Fixme: ⚠️️ move defaults to a const
    * - Parameters:
    *   - currentPage: Initial page
    *   - numberOfPages: Total number of pages
    *   - frameRect: View frame
    */
   public init(currentPage: Binding<Int> = .constant(0), numberOfPages: Int = 0, hidesForSinglePage: Bool = true, pageIndicatorTintColor: Color = Color.gray, currentPageIndicatorTintColor: Color = Color.white) {
      self._currentPage = currentPage
      self.numberOfPages = numberOfPages
      self.hidesForSinglePage = hidesForSinglePage
      self.pageIndicatorTintColor = pageIndicatorTintColor
      self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
   }
}
