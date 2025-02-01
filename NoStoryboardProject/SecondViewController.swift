//
//  SecondViewController.swift
//  SampleRouter
//
//  Created by sakiyamaK on 2023/01/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground

        // UIButtonのインスタンスを作り文字や色を設定する
        var buttonConfig = UIButton.Configuration.plain()
        buttonConfig.title = "second"
        buttonConfig.baseForegroundColor = .black
        let button = UIButton(configuration: buttonConfig)

        // iOS14から追加されたボタンがタップされた時の実装の仕方
        // タップされた時のアクションインスタンスを作る
        let action = UIAction(handler: { _ in
            // ボタンがタップされたら画面遷移させる
            
            // 遷移先のインスタンスを作る
            let vc = FirstViewController()
            // navigationControllerが設定されていたらnilじゃないのでifの中に入る
            if let navigationController = self.navigationController {
                // navigationControllerのpushViewControllerで画面遷移する
                navigationController.pushViewController(vc, animated: true)
            }
        })
        button.addAction(action, for: .touchUpInside)


        self.view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // こうして一度に制約をactiveにすることもできる
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}


#Preview {
    UINavigationController(
        rootViewController: SecondViewController()
    )    
}
