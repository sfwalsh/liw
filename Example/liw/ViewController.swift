//
//  ViewController.swift
//  liw
//
//  Created by donedeal-Stephenw on 01/25/2018.
//  Copyright (c) 2018 donedeal-Stephenw. All rights reserved.
//

import UIKit
import liw

class ViewController: UIViewController {

    @IBOutlet weak var pendingContentLabel: LIWPendingContentLabel!
    
    @IBAction func didTapReadyButton(sender: Any?) {
        self.pendingContentLabel.update(with: "Sample Text")
    }
    
    @IBAction func didTapPendingButton(sneder: Any?) {
        self.pendingContentLabel.state = LIWPendingContent.ContentState.pending
    }
}

