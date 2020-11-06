//
//  customButtons.swift
//  GeneralTools
//
//  Created by Salman Mohammed on 27/08/1441 AH.
//  Copyright © 1441 Salman Mohammed. All rights reserved.
//

import UIKit

class CustomButtons: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButton()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        
    }
    
    
    func setupButton(){
        
        
       // setShadow()
        
    
        layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        layer.borderWidth = 3.0
        layer.cornerRadius = 15.0
        
        
    }
    
    
    
    private func setShadow() {
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.5
        
        
    }
    
    
    
}
