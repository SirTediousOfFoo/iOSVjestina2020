//
//  QuestionViewController.swift
//  
//
//  Created by five on 03/05/2020.
//

import UIKit

class QuestionView: UIView {
    //MARK:- Properties
    var question: Question?
    let nibName = "QuestionView"
    
    //MARK:- Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet var view: UIView!
    
    //MARK:- Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    private func configure() {
        Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        view.layer.cornerRadius = 15
    }
    
}
