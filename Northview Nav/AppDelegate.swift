//
//  AppDelegate.swift
//  Northview Nav
//
//  Created by Shivam Sharma on 2019-12-19.
//  Copyright © 2019 Shivam Sharma. All rights reserved.
//

import UIKit
import IndoorAtlas

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        guard kAPIKey.count > 0 || kAPISecret.count > 0 else { print("Configure API key and API secret inside ApiKeys.swift"); return false}
        
        authenticateIALocationManager()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    func authenticateIALocationManager() {
        
        // Get IALocationManager shared instance
        let manager = IALocationManager.sharedInstance()
    
        // Set IndoorAtlas API key and secret
        manager.setApiKey(kAPIKey, andSecret: kAPISecret)
    }
    
}

