import SwiftUI
/**
 * Content
 */
extension PageControl {
   /**
    * An array of shape layers that represent the dots in the page control.
    * - Description: The body property represents the visual content of the PageControl. It defines a horizontal stack of interactive dots, each representing a page. The dots change appearance based on the current page and respond to tap gestures by updating the current page.
    */
   public var body: some View {
      // Creates a horizontal stack with spacing defined by `dotSpacing` to layout the page indicator dots.
      HStack(spacing: PageControl.dotSpacing) {
         // Iterates over the range of `numberOfPages` to create a dot for each page.
         ForEach(0..<numberOfPages, id: \.self) { index in
            Circle()
               .fill(index == currentPage ? currentPageIndicatorTintColor : pageIndicatorTintColor) // Applies the current page indicator color if the index matches the current page, otherwise applies the default page indicator color.
               .frame(width: PageControl.dotDiameter, height: PageControl.dotDiameter) // Sets the frame of the dot to the predefined diameter.
               .padding(Self.dotDiameter) // makes the tappable area twice the size of the fill area, modifier is used to add padding around the Circle view, effectively doubling the tappable area. The contentShape(Rectangle()) modifier is used to extend the tappable area to the full size of the view including the padding.
               .contentShape(Rectangle()) // Defines the tappable area of the dot as a rectangle, which extends beyond the visible circle to the padding area.
               .onTapGesture { // Adds a tap gesture to the dot that triggers when the dot is tapped.
                  withAnimation(.linear(duration: Self.animationDuration)) { // Animates the transition of the page indicator when a new page is selected.
                     currentPage = index // Sets the current page to the index of the tapped dot, with a linear animation of the specified duration.
                  }
               }
            }
         }
      }
      .opacity(hidesForSinglePage && numberOfPages <= 1 ? 0 : 1) // Adjusts the opacity of the page control. If `hidesForSinglePage` is true and there is only one page or none, the opacity is set to 0 (hidden). Otherwise, it's set to 1 (fully visible).
   }
}
