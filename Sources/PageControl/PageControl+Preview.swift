import SwiftUI
/**
 * Preview
 * - Note: Because of github action we can't currently use more modern: #Preview(traits: .fixedLayout(width: 300, height: 300)) {
 */
struct PageControl_Previews: PreviewProvider {
   struct DebugContainer: View {
      @State private var currentPage = 1
      var body: some View {
         // Remeber to set currentPageIndicatorTintColor to white for dark-mode and black for lightmode
         PageControl(currentPage: $currentPage, numberOfPages: 5, pageIndicatorTintColor: .gray, currentPageIndicatorTintColor: .black)
         // Github actions doesnt like the syntax bellow
         // .onChange(of: currentPage) { old, new in
         // Swift.print("currentPage: \(currentPage)")
         // }
      }
   }
   static var previews: some View {
      return DebugContainer()
         .padding()
         .frame(width: 300, height: 300)
   }
}
