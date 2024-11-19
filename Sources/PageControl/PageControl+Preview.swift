import SwiftUI
/**
 * Preview
 * - Caution: ⚠️️ We use legacy previewprovider syntax because of github action we can't currently use more modern: #Preview(traits: .fixedLayout(width: 300, height: 300)) {
 */
struct PageControl_Previews: PreviewProvider {
   struct DebugContainer: View {
      @State private var currentPage = 1
      var body: some View {
         // ⚠️️ Remeber to set currentPageIndicatorTintColor to white for dark-mode and black for lightmode
         PageControl( // Initializes a PageControl view with the specified parameters.
            currentPage: $currentPage, // Binds the current page to the PageControl, allowing it to be updated interactively.
            numberOfPages: 5, // Sets the total number of pages (dots) displayed in the PageControl.
            pageIndicatorTintColor: .gray, // Sets the color of the non-current page indicator dots to gray.
            currentPageIndicatorTintColor: .black // Sets the color of the current page indicator dot to black.
         )
         // ⚠️️ Github actions doesn't like the syntax bellow, and refuses to build
         // .onChange(of: currentPage) { old, new in
         // Swift.print("currentPage: \(currentPage)")
         // }
      }
   }
   static var previews: some View {
      DebugContainer()
         .padding()
         .frame(width: 300, height: 300)
   }
}
