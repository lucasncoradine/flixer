# Flixer
> 💡 **Note**: _This project uses `xcodegen` to generate the `.xcodeproj`_

## Getting Started
1. Clone the project
2. Run `make setup` in terminal. This will download the required dependencies and generate the Xcode project.
3. All done!

## Makefile Commands
- `setup` - Used for the first-time setup to install dependencies and generate the `.xcodeproj`
- `branch` - Follow the steps to create a new branch
- `generate` - Uses `xcodegen` to generate the Xcode Project
- `pullrequest` - Follow the steps to create a Pull Request template
- `snapshots` - Clear all the `__Snapshots__` folder and run the tests again

## Dependencies
- [Xcodegen](https://github.com/yonaskolb/XcodeGen/)
- [SwiftLint](https://github.com/realm/SwiftLint)
- [Swift Snapshot Testing](https://github.com/pointfreeco/swift-snapshot-testing)