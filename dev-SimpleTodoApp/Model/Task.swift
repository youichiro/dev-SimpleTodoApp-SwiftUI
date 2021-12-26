struct Task: Hashable, Codable, Identifiable {
    public var id: String
    public var title: String
    public var description: String
    public var done: Bool
}
