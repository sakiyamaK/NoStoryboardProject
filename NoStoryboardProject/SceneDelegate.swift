//
//  SceneDelegate.swift
//
//  Created by sakiyamaK on 2023/01/22.
//

import UIKit

// AppDelegateの仕様だけだと、その後のiPhoneやiPadの要件に応えられなくなってきたので別classができた
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var window2: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
 
        let scene = scene as! UIWindowScene
        
        //windowの生成
        let window = UIWindow(windowScene: scene)
//        window.frame = .init(x: 100, y: 100, width: 300, height: 300)
        
        let vc1 = UIViewController()
        vc1.view.backgroundColor = .red
        
        window.rootViewController = vc1

//        let window2 = UIWindow(windowScene: scene)
//        window2.frame = .init(x: 300, y: 300, width: 300, height: 300)
//        
//        let vc2 = UIViewController()
//        vc2.view.backgroundColor = .green
//        
//        window2.rootViewController = vc2
//        let vc = FirstViewController()
//        let firstNav = UINavigationController(rootViewController: vc)
//
//        window.rootViewController = firstNav
    
        // windowを画面に表示する
        // macだとwindowが複数あることが普通なので
        // どのwindowインスタンスがユーザ操作を受け付けるべきか指定しないといけない
        // iOSもその仕組みを受け継いで作られたOSなので指定がいる
        window.makeKeyAndVisible()
//        window2.makeKeyAndVisible()

        // windowインスタンスが解放されないようにパラメータに代入する
        self.window = window
//        self.window2 = window2
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

