//
//  SceneDelegate.swift
//
//  Created by sakiyamaK on 2023/01/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        //windowの生成
        let window = UIWindow(windowScene: scene)
        
//        let vc = UIViewController()
//        vc.view.backgroundColor = .red

//        window.frame = UIScreen.main.bounds// デフォルトでフルスクリーン
        // 直接座標と大きさを指定することでwindowサイズと位置を変更することができる
        // ただしスマホアプリはフルスクリーンで表示することが普通なので変更することはない
//        window.frame = CGRect(x: 10, y: 10, width: 300, height: 300)

        // 表示させたい画面のViewControllerを用意する
        // ユーザのログイン状態に合わせたりして最初の画面を切り替える
        // 今回の例だと0か1のランダムで最初の画面が切り替わる
        let vc: UIViewController
        if Int.random(in: 0...1) == 0 {
            vc = FirstViewController()
        } else {
            let secondVC = SecondViewController()
            // 画面遷移を管理するUINavigationControllerもコードで設定できる
            // UINavigationControllerはUIViewControllerの子クラスなのでvcに代入できる
            vc = UINavigationController(rootViewController: secondVC)
        }

        // windowに最初に表示するviewcontrollerを代入する
        window.rootViewController = vc

        // windowを画面に表示する
        // macだとwindowが複数あることが普通なので
        // どのwindowインスタンスがユーザ操作を受け付けるべきか指定しないといけない
        // iOSもその仕組みを受け継いで作られたOSなので指定がいる
        window.makeKeyAndVisible()

        // windowインスタンスが解放されないようにパラメータに代入する
        self.window = window
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

