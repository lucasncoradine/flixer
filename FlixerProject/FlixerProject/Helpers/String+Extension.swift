extension String {
    /// Checks if the string is not empty
    var isNotEmpty: Bool {
        self.isEmpty == false
    }

    /// Turns a Camel-Cased string into Kebab Case
    func toKebabCase() -> String {
        var result  = self.replacingOccurrences(of: "([A-Z])",
                                                with: "-$1",
                                                options: .regularExpression,
                                                range: range(of: self))
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .lowercased()

        if result.first == "-" {
            result.removeFirst()
        }

        return result
    }
}
