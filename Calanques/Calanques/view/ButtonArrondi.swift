//
//  ButtonArrondi.swift
//  Calanques
//
//  Created by wiem on 3/1/19.
//  Copyright © 2019 wiem. All rights reserved.
//

import UIKit

class ButtonArrondi: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder )
        setup()
    }
    
    func setup(){
      layer.cornerRadius = 10
    }

}
