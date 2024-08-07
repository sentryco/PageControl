import SwiftUI
/**
 * Constants
 */
public extension PageControl {
   /**
    * The length of each dot in the page control
    * - Description: This property defines the diameter of each dot in the page control.
    */
   static let dotDiameter: CGFloat = 8.0
   /**
    * The margin between each dot in the page control
    * - Description: This property defines the space between each dot in the page control.
    * - Note: We do have extended tappable area now so spacing is implicit
    * - Remark: Use -2 for macOS and 0 for iOS
    */
   static let dotSpacing: CGFloat = -2.0
   /**
    * The duration of the animation used to update the page control
    * - Description: This property specifies the time interval over which the page control's appearance transitions from one state to another when a new page is selected.
    */
   static let animationDuration: CFTimeInterval = 0.08
}
