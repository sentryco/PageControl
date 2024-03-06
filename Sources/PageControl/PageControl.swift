import SwiftUI
/**
 * This SwiftUI PageControl view uses a HStack to layout the dots. Each dot is a Circle view with a fill color that depends on whether it represents the current page or not. The onTapGesture modifier is used to update the current page when a dot is tapped. The opacity modifier is used to hide the page control when hidesForSinglePage is true and there is only one page.
 */
struct PageControl: View {
   /**
    * The current page of the page control.
    */
   @State private var currentPage: Int
   /**
    * The number of pages in the page control
    */
   let numberOfPages: Int
   /**
    * A boolean value that determines whether the page control hides itself when there is only one page.
    */
   let hidesForSinglePage: Bool
   /**
    * The color of the dots in the page control.
    */
   let pageIndicatorTintColor: Color
   /**
    * The color of the active dot in the page control.
    */
   let currentPageIndicatorTintColor: Color
   /**
    * init
    * - Parameters:
    *   - currentPage: Initial page
    *   - numberOfPages: Total number of pages
    *   - frameRect: View frame
    */
   init(currentPage: Int = 0, numberOfPages: Int = 0, hidesForSinglePage: Bool = true, pageIndicatorTintColor: Color = Color.gray, currentPageIndicatorTintColor: Color = Color.white) {
      _currentPage = State(initialValue: currentPage)
      self.numberOfPages = numberOfPages
      self.hidesForSinglePage = hidesForSinglePage
      self.pageIndicatorTintColor = pageIndicatorTintColor
      self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
   }
   /**
    * An array of shape layers that represent the dots in the page control.
    */
   var body: some View {
      HStack(spacing: Self.dotSpacing) {
         ForEach(0..<numberOfPages, id: \.self) { index in
            Circle()
               .fill(index == currentPage ? currentPageIndicatorTintColor : pageIndicatorTintColor)
               .frame(width: Self.dotDiameter, height: Self.dotDiameter)
               .padding(Self.dotDiameter) // makes the tappable area twice the size of the fill area, modifier is used to add padding around the Circle view, effectively doubling the tappable area. The contentShape(Rectangle()) modifier is used to extend the tappable area to the full size of the view including the padding.
               .contentShape(Rectangle())
               .onTapGesture {
                  withAnimation(.linear(duration: Self.animationDuration)) {
                     currentPage = index
                  }
               }
         }
      }
      .opacity(hidesForSinglePage && numberOfPages <= 1 ? 0 : 1)
   }
}
/**
 * Constants
 */
extension PageControl {
   /**
    * The length of each dot in the page control.
    */
   static let dotDiameter: CGFloat = 8.0
   /**
    * The margin between each dot in the page control.
    * - Note: We do have extended tappable area now so spacing is implicit
    */
   static let dotSpacing: CGFloat = 0.0
   /**
    * The duration of the animation used to update the page control.
    */
   static let animationDuration: CFTimeInterval = 0.08
}
/**
 * Preview
 */
#Preview(traits: .fixedLayout(width: 300, height: 300)) {
   PageControl(currentPage: 1, numberOfPages: 5)
      .padding()
      .frame(width: 300, height: 300)
}
