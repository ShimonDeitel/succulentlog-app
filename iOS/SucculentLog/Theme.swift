import SwiftUI

/// Succulent Log unique visual theme.
enum Theme {
    static let accent = Color(red: 0.4863, green: 0.6039, blue: 0.4314)
    static let accentSecondary = Color(red: 0.7255, green: 0.5412, blue: 0.3686)
    static let background = Color(red: 0.1059, green: 0.1216, blue: 0.0980)
    static let card = Color(red: 0.1412, green: 0.1647, blue: 0.1333)
    static let textPrimary = Color(red: 0.9373, green: 0.9216, blue: 0.8863)
    static let textMuted = textPrimary.opacity(0.62)

    static let titleFont = Font.system(.title2, design: .serif).weight(.bold)
    static let headlineFont = Font.system(.headline, design: .rounded).weight(.semibold)
    static let bodyFont = Font.system(.body, design: .default)
    static let captionFont = Font.system(.caption, design: .rounded)

    static let cornerRadius: CGFloat = 16
}

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Theme.card)
            .cornerRadius(Theme.cornerRadius)
    }
}

extension View {
    func cardStyle() -> some View { modifier(CardBackground()) }
}
