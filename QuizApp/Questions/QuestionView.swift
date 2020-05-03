//
//  QuestionViewController.swift
//  
//
//  Created by five on 03/05/2020.
//

import UIKit

@IBDesignable
class QuestionView: UIView {
    //MARK:- Properties
    var question: Question?
    let nibName = "QuestionView"
    
    //MARK:- Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    func loadViewFromNib() -> UIView? {
           let bundle = Bundle(for: type(of: self))
           let nib = UINib(nibName: nibName, bundle: bundle)
           return nib.instantiate(withOwner: self, options: nil).first as? UIView
       }
}
