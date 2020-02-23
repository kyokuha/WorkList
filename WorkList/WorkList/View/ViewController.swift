//
//  ViewController.swift
//  WorkList
//
//  Created by 曲波 on 2020/02/08.
//  Copyright © 2020 曲波. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let txtLabel: UILabel = {
        //label的基本使用 使用大小边框的大小来创建
        let label = UILabel(frame: CGRect(x: 20, y: 200, width: 100, height: 200))
        //设置文本的内容
        label.text = "杭州师范大学教务处"
        //设置文本的行数
        label.numberOfLines = 2
        //文字过长的时候的显示模式 具体看文档
        label.lineBreakMode = NSLineBreakMode.byClipping
        //根据文本框的范围来自动缩放字体，已达到全部显示的结果
        label.adjustsFontSizeToFitWidth = true
        //设置字体的大小
        label.font = UIFont.boldSystemFont(ofSize: 40)
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 1/255, green: 170/255, blue: 235/255, alpha: 1)
        
//        //label的基本使用 使用大小边框的大小来创建
//        let label = UILabel(frame: CGRect(x: 20, y: 200, width: 100, height: 200))
//        //设置文本的内容
//        label.text = "杭州师范大学教务处"
//        //设置文本的行数
//        label.numberOfLines = 2
//        //文字过长的时候的显示模式 具体看文档
//        label.lineBreakMode = NSLineBreakMode.byClipping
//        //根据文本框的范围来自动缩放字体，已达到全部显示的结果
//        label.adjustsFontSizeToFitWidth = true
//        //设置字体的大小
//        label.font = UIFont.boldSystemFont(ofSize: 40)
        //添加到视图中
        view.addSubview(txtLabel)
        //设置自定义的label
        let label2 = UILabel()
        label2.center = view.center
        view.addSubview(label2)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        txtLabel.snp.makeConstraints { (make) in
            make.top.equalTo(60)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(100)
        }
    }
}

