// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "AXToolbox",
	defaultLocalization: "en",
	platforms: [
		.macOS(.v10_13),
	],
	products: [
		.library(name: "AXToolbox", targets: ["AXToolbox"]),
	],
	targets: [
		.target(name: "AXToolbox"),
	]
)
