//
//  File.swift
//  
//
//  Created by Valerio Sebastianelli on 1/29/21.
//

import Foundation
import UIKit
//import USSwiftExtensions

@IBDesignable
public class USCard: UIView {
    
    /// Set the card corner radius
    @IBInspectable
    public var cornerRadius: CGFloat = 4 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    /// Set the card border width
    @IBInspectable
    public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    /// Set the card border color
    @IBInspectable
    public var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    private func setupView() {
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor?.cgColor
        layer.cornerRadius = cornerRadius
//        self.addShadowLarge()
    }
    
}
