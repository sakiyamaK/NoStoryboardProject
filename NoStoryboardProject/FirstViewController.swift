//
//  ViewController.swift
//  SampleRouter
//
//  Created by sakiyamaK on 2023/01/22.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        // uilabelのインスタンスを作り文字や色を設定する
        let label = UILabel()
        label.text = "first"
        label.textColor = UIColor.black

        // uiviewの上に貼り付ける
        self.view.addSubview(label)
        
        // 古い仕様との互換性のためにあるパラメータ
        // デフォルトがtrueだが、autolayoutの制約を貼るのに都合が悪いためfalseにする
        // Appleの設計ミスじゃないかこれは...
        label.translatesAutoresizingMaskIntoConstraints = false
        
        // labelのcenterXをviewのcenterXと同じにするという制約を貼る
        let centerXConst = label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        // 制約はデフォルトでisActiveのパラメータがfalseであり
        // これがfalseだと制約が効かないためtrueにする
        // Appleの設計ミスじゃないかこれは...
        centerXConst.isActive = true
        
        // labelのcenterYをviewのcenterYと同じにするという制約を貼る
        let centerYConst = label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        centerYConst.isActive = true
    }
}

