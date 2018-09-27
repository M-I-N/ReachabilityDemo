ReachabilityDemo
============
![Language](https://img.shields.io/badge/language-Swift%204-orange.svg)

**ReachabilityDemo** is a demo iOS project that uses protocol oriented programming (**POP**) approach to monitor the changes in network reachability.

## Usage
Any type that conforms to the `Reachable` protocol will be able to be notified when network connectivity changes.

## Dependency
[Reachability.swift](https://github.com/ashleymills/Reachability.swift) file needs to be imported in the project.

## Example
```swift
class FirstViewController: UIViewController, Reachable {
    // Reachable protocol requirement
    let reachability: Reachability = Reachability()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Invoke the default implementation of the Reachable protocol requirement to be able to be notified
        startMonitoringReachabilityChangeStatus()
    }
    
    // Reachable protocol requirement
    func reachabilityChanged(to: Reachability.Connection) {
        // Everytime any change happens in the network connectivity this method will be invoked with appropriate connection status
        switch to {
        case .wifi:
            DispatchQueue.main.async {
                // Update any UI component
            }
        case .cellular:
            DispatchQueue.main.async {
                // Update any UI component
            }
        case .none:
            DispatchQueue.main.async {
                // Update any UI component
            }
        }
    }
}
```

## Notices
The current version is working with Xcode Version Xcode 9.3 (9E145).
