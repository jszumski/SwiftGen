// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable function_parameter_count identifier_name line_length type_body_length
internal enum XCTLoc {
  /// Some alert body there
  internal static let alertMessage = XCTLoc.tr("Localizable", "alert__message")
  /// Title for an alert
  internal static let alertTitle = XCTLoc.tr("Localizable", "alert__title")
  /// value1
  internal static let key1 = XCTLoc.tr("Localizable", "key1")
  /// These are %3$@'s %1$d %2$@.
  internal static func objectOwnership(_ p1: Int, _ p2: Any, _ p3: Any) -> String {
    return XCTLoc.tr("Localizable", "ObjectOwnership", p1, String(describing: p2), String(describing: p3))
  }
  /// This is a %% character.
  internal static let percent = XCTLoc.tr("Localizable", "percent")
  /// Hello, my name is %@ and I'm %d
  internal static func `private`(_ p1: Any, _ p2: Int) -> String {
    return XCTLoc.tr("Localizable", "private", String(describing: p1), p2)
  }
  /// Object: '%@', Character: '%c', Integer: '%d', Float: '%f', CString: '%s', Pointer: '%p'
  internal static func types(_ p1: Any, _ p2: CChar, _ p3: Int, _ p4: Float, _ p5: UnsafePointer<CChar>, _ p6: UnsafeRawPointer) -> String {
    return XCTLoc.tr("Localizable", "types", String(describing: p1), p2, p3, p4, p5, Int(bitPattern: p6))
  }
  /// You have %d apples
  internal static func applesCount(_ p1: Int) -> String {
    return XCTLoc.tr("Localizable", "apples.count", p1)
  }
  /// A comment with no space above it
  internal static func bananasOwner(_ p1: Int, _ p2: Any) -> String {
    return XCTLoc.tr("Localizable", "bananas.owner", p1, String(describing: p2))
  }
  /// Same as "key1" = "value1"; but in the context of user not logged in
  internal static let key1Anonymous = XCTLoc.tr("Localizable", "key1.anonymous")
  /// %@ %d %f %5$d %04$f %6$d %007$@ %8$3.2f %11$1.2f %9$@ %10$d
  internal static func manyPlaceholdersBase(_ p1: Any, _ p2: Int, _ p3: Float, _ p4: Float, _ p5: Int, _ p6: Int, _ p7: Any, _ p8: Float, _ p9: Any, _ p10: Int, _ p11: Float) -> String {
    return XCTLoc.tr("Localizable", "many.placeholders.base", String(describing: p1), p2, p3, p4, p5, p6, String(describing: p7), p8, String(describing: p9), p10, p11)
  }
  /// %@ %d %0$@ %f %5$d %04$f %6$d %007$@ %8$3.2f %11$1.2f %9$@ %10$d
  internal static func manyPlaceholdersZero(_ p1: Any, _ p2: Int, _ p3: Float, _ p4: Float, _ p5: Int, _ p6: Int, _ p7: Any, _ p8: Float, _ p9: Any, _ p10: Int, _ p11: Float) -> String {
    return XCTLoc.tr("Localizable", "many.placeholders.zero", String(describing: p1), p2, p3, p4, p5, p6, String(describing: p7), p8, String(describing: p9), p10, p11)
  }
  /// Some Reserved Keyword there
  internal static let settingsNavigationBarSelf = XCTLoc.tr("Localizable", "settings.navigation-bar.self")
  /// DeepSettings
  internal static let settingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep = XCTLoc.tr("Localizable", "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
  /// Settings
  internal static let settingsNavigationBarTitleEvenDeeper = XCTLoc.tr("Localizable", "settings.navigation-bar.title.even.deeper")
  /// Here you can change some user profile settings.
  internal static let settingsUserProfileSectionFooterText = XCTLoc.tr("Localizable", "settings.user__profile_section.footer_text")
  /// User Profile Settings
  internal static let settingsUserProfileSectionHEADERTITLE = XCTLoc.tr("Localizable", "settings.user__profile_section.HEADER_TITLE")
  /// some comment
  internal static let whatHappensHere = XCTLoc.tr("Localizable", "what./*happens*/.here")
}
// swiftlint:enable function_parameter_count identifier_name line_length type_body_length

// MARK: - Implementation Details

extension XCTLoc {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
