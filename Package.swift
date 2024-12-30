// swift-tools-version: 6.0

import PackageDescription

let package = Package(
	name: "AXToolbox",
	defaultLocalization: "en",
	platforms: [
		.macOS(.v10_13),
	],
	products: [
		.library(
			name: "AXToolbox",
			targets: ["AXToolbox"]
		),
	],
	dependencies: [
		.package(url: "https://github.com/ryanslikesocool/DeclarativeCore.git", from: "0.0.4"),
	],
	targets: [
		.target(
			name: "AXToolbox",
			dependencies: [
				"DeclarativeCore",
			]
		),
	]
)
