//
//  ViewController.swift
//  progress_bar_Timer
//
//  Created by 준수김 on 2021/10/04.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()

    @IBOutlet weak var progressBar: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progressTintColor = .red
        progressBar.progress = 0.0
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        var progress: Float = 0.0
        progressBar.progress = progress
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(timer) in
            
            progress += 0.01
            self.progressBar.progress = progress
            
            if self.progressBar.progress == 1.0 {
                self.progressBar.progress = 0.0
            }
            
        })
    }
}

