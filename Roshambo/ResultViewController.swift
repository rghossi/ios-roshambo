//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Rafael Rodrigues Ghossi on 3/25/17.
//  Copyright © 2017 Rafael Rodrigues Ghossi. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var resultMessage: String?
    
    @IBOutlet weak var resultMessageLabel: UILabel!
    @IBOutlet weak var resultImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if resultMessage?.range(of:"tie") != nil {
            resultImageView.image = UIImage(named: "itsATie")
        } else if resultMessage?.range(of:"crushes") != nil {
            resultImageView.image = UIImage(named: "RockCrushesScissors")
        } else if resultMessage?.range(of:"cut") != nil {
            resultImageView.image = UIImage(named: "ScissorsCutPaper")
        } else if resultMessage?.range(of:"covers") != nil {
            resultImageView.image = UIImage(named: "PaperCoversRock")
        } else {
            resultImageView.image = nil
        }
        
        resultMessageLabel.text = resultMessage
    }
    
    @IBAction func dismissResultView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

