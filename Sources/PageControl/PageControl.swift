import SwiftUI
/**
 * This SwiftUI PageControl view uses a HStack to layout the dots. Each dot is a Circle view with a fill color that depends on whether it represents the current page or not. The onTapGesture modifier is used to update the current page when a dot is tapped. The opacity modifier is used to hide the page control when hidesForSinglePage is true and there is only one page.
 */
public struct PageControl: View {
   /**
    * The current page of the page control.
    */
   @Binding public var currentPage: Int
   /**
    * The number of pages in the page control
    */
   public let numberOfPages: Int
   /**
    * A boolean value that determines whether the page control hides itself when there is only one page.
    */
   public let hidesForSinglePage: Bool
   /**
    * The color of the dots in the page control.
    */
   public let pageIndicatorTintColor: Color
   /**
    * The color of the active dot in the page control.
    */
   public let currentPageIndicatorTintColor: Color
   /**
    * init
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
