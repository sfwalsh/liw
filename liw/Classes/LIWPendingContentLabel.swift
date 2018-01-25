//
//  LIWPendingContentLabel.swift
//  PendableContent
//
//  Created by Stephen Walsh on 23/01/2018.
//  Copyright © 2018 Greenby Apps. All rights reserved.
//

import UIKit

open class LIWPendingContentLabel: UILabel, LIWPendableContentView {
    
    public typealias ContentType = String?
    
    lazy public var pendingContentGradientLayer: LIWPendingContentGradientLayer = {
        return LIWPendingContentGradientLayer(with: #colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1), highlightColour: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), cornerRadius: 2.0)
    }()
    
    public var state: LIWPendingContent.ContentState = LIWPendingContent.ContentState.pending {
        didSet {
            updatePendingContentGradient(for: state)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        performInitialSetup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        performInitialSetup()
    }
    
    private func performInitialSetup() {
        layer.addSublayer(pendingContentGradientLayer)
        state = LIWPendingContent.ContentState.pending
    }
    
    override open func draw(_ rect: CGRect) {
        super.draw(rect)
        pendingContentGradientLayer.frame = rect
    }
    
    private func updatePendingContentGradient(for state: LIWPendingContent.ContentState) {
        switch state {
        case .ready:
            pendingContentGradientLayer.hide()
        case .pending:
            pendingContentGradientLayer.show()
        }
    }
    
    public func update(with content: String?) {
        text = content
        state = LIWPendingContent.ContentState.ready
    }
}
