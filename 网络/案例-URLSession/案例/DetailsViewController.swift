//
//  DetailsViewController.swift
//  案例
//
//  Created by 杨帆 on 2019/1/26.
//  Copyright © 2019 ABC. All rights reserved.
//

import UIKit
import WebKit

class DetailsViewController: UIViewController {
    var selectedItem: DataItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = selectedItem?.title

        let wkWebView = WKWebView(frame: view.frame)

        let requset = URLRequest(url: URL(string: (selectedItem?.url)!)!)

        wkWebView.load(requset)

        view.addSubview(wkWebView)
    }
}
