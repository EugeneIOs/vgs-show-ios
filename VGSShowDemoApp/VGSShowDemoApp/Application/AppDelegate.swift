//
//  AppDelegate.swift
//  VGSShowDemoApp
//
//  Created by Dima on 23.10.2020.
//

import UIKit
import VGSShowSDK
import VGSCollectSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.

		// Enable loggers only for debug!
		#if DEBUG
		// Setup VGS Show loggers:
		// Show warnings and errors.
		VGSLogger.shared.configuration.level = .warning

		// Show network session for reveal requests.
		VGSLogger.shared.configuration.isNetworkDebugEnabled = true

		// Setup VGS Collect loggers:
		// Show warnings and errors.
		VGSCollectLogger.shared.configuration.level = .warning

		// Show network session for collect requests.
		VGSCollectLogger.shared.configuration.isNetworkDebugEnabled = true
		#endif

		return true
	}
}
