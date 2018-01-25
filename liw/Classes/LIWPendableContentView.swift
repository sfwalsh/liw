//
//  LIWPendableContentView.swift
//  PendableContent
//
//  Created by Stephen Walsh on 23/01/2018.
//  Copyright © 2018 Greenby Apps. All rights reserved.
//

import Foundation

public protocol LIWPendableContentView: class {
    var pendingContentGradientLayer: LIWPendingContentGradientLayer {get set}
    var state: LIWPendingContent.ContentState {get set}
    func update(with content: ContentType)
    
    associatedtype ContentType
}
