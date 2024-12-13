// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "SwiftyAccessibility",
	defaultLocalization: "en",
	platforms: [
		.macOS(.v10_13),
	],
	products: [
		.library(name: "SwiftyAccessibility", targets: ["SwiftyAccessibility"]),
	],
	targets: [
		.target(name: "SwiftyAccessibility"),
	]
)