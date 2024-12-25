internal struct ModifiedContent<Upstream, Downstream> {
	private let upstream: Upstream
	private let downstream: Downstream

	public init(upstream: Upstream, downstream: Downstream) {
		self.upstream = upstream
		self.downstream = downstream
	}
}

// MARK: - AXAttributeProtocol

extension ModifiedContent: AXAttributeProtocol where
	Upstream: AXAttributeProtocol,
	Downstream: AXAttributeProtocol,
	Upstream.Output == Downstream.Input
{
	typealias Input = Upstream.Input
	typealias Output = Downstream.Output

	func process(_ input: Input) -> Output {
		let intermediate = upstream.process(input)
		return downstream.process(intermediate)
	}
}
