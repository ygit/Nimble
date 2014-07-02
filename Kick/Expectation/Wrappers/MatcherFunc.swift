import Foundation

struct MatcherFunc<T>: BasicMatcher {
    let matcher: (Expression<T>, FailureMessage) -> Bool

    init(_ matcher: (Expression<T>, FailureMessage) -> Bool) {
        self.matcher = matcher
    }

    func matches(actualExpression: Expression<T>, failureMessage: FailureMessage) -> Bool {
        return matcher(actualExpression, failureMessage)
    }
}