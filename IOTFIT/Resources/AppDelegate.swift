//
//  AppDelegate.swift
//  IOTFIT
//
//  Created by Krystian Bujak on 18/12/2018.
//  Copyright © 2018 Krystian Bujak. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let tabBarController = UITabBarController()
        
        let createWorkoutViewController = CreateWorkoutViewController()
        createWorkoutViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        let workoutMapViewController = WorkoutMapViewController()
        workoutMapViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        
        tabBarController.viewControllers = [createWorkoutViewController, UINavigationController(rootViewController: workoutMapViewController)]
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }
}

