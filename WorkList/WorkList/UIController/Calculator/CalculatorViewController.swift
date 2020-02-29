//
//  ViewController.swift
//  WorkList
//
//  Created by 曲波 on 2020/02/08.
//  Copyright © 2020 曲波. All rights reserved.
//

import UIKit
import SnapKit

class CalculatorViewController: UIViewController {

    let lblDisplay: UILabel = {
        //label的基本使用 使用大小边框的大小来创建
        let label = UILabel()
        //设置文本的内容
        label.text = "曲 家意"
        //设置文本的行数
        label.numberOfLines = 1
        //文字过长的时候的显示模式 具体看文档
        label.lineBreakMode = NSLineBreakMode.byClipping
        //根据文本框的范围来自动缩放字体，已达到全部显示的结果
        label.adjustsFontSizeToFitWidth = true
        //设置字体的大小
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .right
        //设置边框
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.borderWidth = 0.5
        return label
    }()
    
    let lblHistory: UILabel = {
        let label = UILabel()
        label.text = "test text"
        label.numberOfLines = 1
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .right
        label.layer.borderColor = UIColor.red.cgColor
        label.layer.borderWidth = 0.5
        return label
    }()
    
    let btnNum1 = CalculatorNumButton(text: "1")
    let btnNum2 = CalculatorNumButton(text: "2")
    let btnNum3 = CalculatorNumButton(text: "3")
    let btnNum4 = CalculatorNumButton(text: "4")
    let btnNum5 = CalculatorNumButton(text: "5")
    let btnNum6 = CalculatorNumButton(text: "6")
    let btnNum7 = CalculatorNumButton(text: "7")
    let btnNum8 = CalculatorNumButton(text: "8")
    let btnNum9 = CalculatorNumButton(text: "9")
    let btnNum0 = CalculatorNumButton(text: "0")
    let btnPoint = CalculatorNumButton(text: ".")
    let btnClear = CalculatorCtlButton(text: "C")
    let btnToMinus = CalculatorCtlButton(text: "+/-")
    let btnRemd = CalculatorCtlButton(text: "%")
    let btnDivided = CalculatorCalcButton(text: "/")
    let btnMultiply = CalculatorCalcButton(text: "*")
    let btnLess = CalculatorCalcButton(text: "-")
    let btnplus = CalculatorCalcButton(text: "+")
    let btnEqual = CalculatorCalcButton(text: "=")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 248, green: 248, blue: 248, alpha: 1)
        
        //添加到视图中
        view.addSubview(lblHistory)
        view.addSubview(lblDisplay)
        view.addSubview(btnNum1)
        view.addSubview(btnNum2)
        view.addSubview(btnNum3)
        view.addSubview(btnNum4)
        view.addSubview(btnNum5)
        view.addSubview(btnNum6)
        view.addSubview(btnNum7)
        view.addSubview(btnNum8)
        view.addSubview(btnNum9)
        view.addSubview(btnNum0)
        view.addSubview(btnPoint)
        
        view.addSubview(btnClear)
        view.addSubview(btnToMinus)
        view.addSubview(btnRemd)
        view.addSubview(btnDivided)
        view.addSubview(btnMultiply)
        view.addSubview(btnLess)
        view.addSubview(btnplus)
        view.addSubview(btnEqual)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        print(view.snp.height)
        
        lblHistory.snp.makeConstraints { (make) in
            //make.top.equalTo(view.snp.height).multipliedBy(0.2)
            make.top.equalTo(200)
            make.left.equalTo(0)
            make.right.equalTo(0)
            //make.height.equalTo(lblHistory.snp.height)
        }
        
        lblDisplay.snp.makeConstraints { (make) in
            make.top.equalTo(lblHistory.snp.bottom)
            make.left.equalTo(lblHistory.snp.left)
            make.right.equalTo(lblHistory.snp.right)
            //make.height.equalTo(lblDisplay.snp.height)
        }
        
        btnClear.snp.makeConstraints { (make) in
            make.top.equalTo(lblDisplay.snp.bottom)
            make.left.equalTo(lblHistory.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnToMinus.snp.makeConstraints { (make) in
            make.top.equalTo(btnClear.snp.top)
            make.left.equalTo(btnClear.snp.right)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnRemd.snp.makeConstraints { (make) in
            make.top.equalTo(btnToMinus.snp.top)
            make.left.equalTo(btnToMinus.snp.right)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum1.snp.makeConstraints { (make) in
            make.top.equalTo(btnClear.snp.bottom)
            make.left.equalTo(btnClear.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum2.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum1.snp.top)
            make.left.equalTo(btnNum1.snp.right)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum3.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum2.snp.top)
            make.left.equalTo(btnNum2.snp.right)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum4.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum1.snp.bottom)
            make.left.equalTo(btnNum1.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum5.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum2.snp.bottom)
            make.left.equalTo(btnNum2.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum6.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum3.snp.bottom)
            make.left.equalTo(btnNum3.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum7.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum4.snp.bottom)
            make.left.equalTo(btnNum4.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum8.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum5.snp.bottom)
            make.left.equalTo(btnNum5.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum9.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum6.snp.bottom)
            make.left.equalTo(btnNum6.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnNum0.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum7.snp.bottom)
            make.left.equalTo(btnNum7.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.5)
        }
        
        btnPoint.snp.makeConstraints { (make) in
            make.top.equalTo(btnNum9.snp.bottom)
            make.left.equalTo(btnNum9.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnDivided.snp.makeConstraints { (make) in
            make.top.equalTo(btnRemd.snp.top)
            make.left.equalTo(btnRemd.snp.right)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnMultiply.snp.makeConstraints { (make) in
            make.top.equalTo(btnDivided.snp.bottom)
            make.left.equalTo(btnDivided.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnLess.snp.makeConstraints { (make) in
            make.top.equalTo(btnMultiply.snp.bottom)
            make.left.equalTo(btnMultiply.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnplus.snp.makeConstraints { (make) in
            make.top.equalTo(btnLess.snp.bottom)
            make.left.equalTo(btnLess.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
        
        btnEqual.snp.makeConstraints { (make) in
            make.top.equalTo(btnplus.snp.bottom)
            make.left.equalTo(btnplus.snp.left)
            make.height.equalTo(view.snp.height).multipliedBy(0.1)
            make.width.equalTo(view.snp.width).multipliedBy(0.25)
        }
    }
}

