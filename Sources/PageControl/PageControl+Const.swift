import SwiftUI
/**
 * Constants
 */
public extension PageControl {
   /**
    * The length of each dot in the page control.
    */
   static let dotDiameter: CGFloat = 8.0
   /**
    * The margin between each dot in the page control.
    * - Note: We do have extended tappable area now so spacing is implicit
    * - Remark: Use -2 for macOS and 0 for iOS
    */
   static let dotSpacing: CGFloat = -2.0
   /**
    * The duration of the animation used to update the page control.
    */
   static let animationDuration: CFTimeInterval = 0.08
}
