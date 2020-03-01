//
//  CalculatorButton.swift
//  WorkList
//
//  Created by 曲波 on 2020/02/23.
//  Copyright © 2020 曲波. All rights reserved.
//

import UIKit

class CalculatorNumButton: UIButton {
    
    init(text: String) {
        super.init(frame: CGRect.zero)
        
        self.setTitle(text, for: .normal)
        self.backgroundColor = UIColor.systemGray2
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CalculatorCtlButton: UIButton {
    
//    let textButton: UIButton!
    
    init(text: String) {
        
//        textButton = UIButton(type: .roundedRect)
        
        super.init(frame: CGRect.zero)

        self.setTitle(text, for: .normal)
        self.backgroundColor = UIColor.systemGray
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CalculatorCalcButton: UIButton {
    
    init(text: String) {
        super.init(frame: CGRect.zero)
        
        self.setTitle(text, for: .normal)
        self.backgroundColor = UIColor(red: 1/255, green: 170/255, blue: 235/255, alpha: 1)
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.black.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
