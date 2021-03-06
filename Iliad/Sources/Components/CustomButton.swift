//
//  CustomButton.swift
//  devisu-ios
//
//  Created by Luigi Aiello on 31/05/18.
//  Copyright © 2018 Aruba. All rights reserved.
//

import UIKit

@IBDesignable
open class CustomButton: UIButton {

    // MARK: - Override
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - Property
    @IBInspectable
    public var isCircle: Bool = false {
        didSet {
            self.clipsToBounds = isCircle
            self.layer.cornerRadius = isCircle ? (0.5 * self.bounds.size.width) : 0
        }
    }

    @IBInspectable
    public var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }

    @IBInspectable
    public var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
        }
    }

    @IBInspectable
    public var borderColor: UIColor = .clear {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
        }
    }

    @IBInspectable
    public var shadowRadius: CGFloat = 0.0 {
        didSet {
            self.layer.shadowRadius = self.shadowRadius
        }
    }

    @IBInspectable
    public var shadowOpacity: Float = 0.0 {
        didSet {
            self.layer.shadowOpacity = self.shadowOpacity
        }
    }

    @IBInspectable
    public var shadowOffSet: CGSize = CGSize.zero {
        didSet {
            self.layer.shadowOffset = self.shadowOffSet
        }
    }

    @IBInspectable
    public var shadowColor: UIColor = .clear {
        didSet {
            self.layer.shadowColor = self.shadowColor.cgColor
        }
    }
}
