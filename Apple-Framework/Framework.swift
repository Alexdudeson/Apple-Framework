//
//  Framework.swift
//  Apple-Framework
//
//  Created by Alexey Yarov on 10.11.2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import Foundation

struct Framework: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let urlString: String
    let description: String
}

struct MockData {
    static let sampleFramework = Framework(name: "App Clips",
                                           imageName: "app-clip",
                                           urlString: "https://developer.apple.com/app-clips/",
                                           description: "App Clips are a great way for users to quickly access and experience what your app has to offer. An App Clip is a small part of your app that’s discoverable at the moment it’s needed. App Clips are fast and lightweight so a user can open them quickly. Whether they’re ordering take-out from a restaurant, renting a scooter, or setting up a new connected appliance for the first time, users will be able to start and finish an experience from your app in seconds. And when they’re done, you can offer the opportunity to download your full app from the App Store.")
    static let frameworks = [
        Framework(name: "App Clips",
                  imageName: "app-clip",
                  urlString: "https://developer.apple.com/app-clips/",
                  description: "App Clips are a great way for users to quickly access and experience what your app has to offer. An App Clip is a small part of your app that’s discoverable at the moment it’s needed. App Clips are fast and lightweight so a user can open them quickly. Whether they’re ordering take-out from a restaurant, renting a scooter, or setting up a new connected appliance for the first time, users will be able to start and finish an experience from your app in seconds. And when they’re done, you can offer the opportunity to download your full app from the App Store."),
    
        Framework(name: "ARKit",
                  imageName: "arkit",
                  urlString: "https://developer.apple.com/augmented-reality/arkit/",
                  description: "ARKit 5 brings Location Anchors to London and more cities across the United States, allowing you to create AR experiences for specific places, like the London Eye, Times Square, and even your own neighborhood. ARKit 5 also features improvements to Motion Tracking and support for Face Tracking in the Ultra Wide camera on iPad Pro (5th generation). And with a new App Clip Code anchor, you can pin virtual content from your App Clip or ARKit app to a printed or digital App Clip Code."),
    
        Framework(name: "CarPlay",
                  imageName: "carplay",
                  urlString: "https://developer.apple.com/carplay/",
                  description: "A smarter, safer way to use your iPhone in the car, CarPlay takes the things you want to do with your iPhone while driving and puts them on your car’s built-in display. You can get directions, make calls, send and receive messages, and listen to music, all while staying focused on the road.")
    
    
    ]
}
