//
//  ViewController.swift
//  SwiftIntro
//
//  Created by 杨帆 on 2018/10/12.
//  Copyright © 2018 ABC. All rights reserved.
//

import UIKit

// 视图UIView、视图控制器UIViewController
// 每一个UIViewController中都有一个UIView，这个UIView与屏幕一样大
// UIViewController负责对UIView进行生命周期的管理；负责处理用户的交互
class ViewController: UIViewController {
    var btn: UIButton?

    @IBOutlet var username: UITextField!
    @IBOutlet var img: UIImageView!
    @IBOutlet var swit: UISwitch!

    // 并不是所有的UI控件都可以设置Action
    // 只有继承自UIControl的才可以
    @IBAction func click(_ sender: UISwitch) {
        print("开关状态变化了")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = UIColor.red

        btn = UIButton(type: .contactAdd)

//        btn.frame = CGRect(x: 100, y: 200, width: 20, height: 20)
//
//        print(btn.bounds)

        btn?.center = view.center

        view.addSubview(btn!)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        btn!.removeFromSuperview()

        let s = view.viewWithTag(101)

        s?.removeFromSuperview()
    }
}
