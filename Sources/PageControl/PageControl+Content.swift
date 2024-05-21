import SwiftUI
/**
 * Content
 */
extension PageControl {
   /**
    * An array of shape layers that represent the dots in the page control.
    */
   public var body: some View {
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
