//
//  QuizCell.swift
//  QuizApp
//
//  Created by five on 02/05/2020.
//

import UIKit

class QuizCell: UITableViewCell {
    
    @IBOutlet weak var quizImage: UIImageView!
    @IBOutlet weak var quizTitleLabel: UILabel!
    @IBOutlet weak var quizDesriptionLabel: UILabel!
    @IBOutlet weak var mainStackView: UIStackView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        quizTitleLabel.text = nil
        quizDesriptionLabel.text = nil
        quizImage.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
    }
}

extension QuizCell {
    func configure(with item: Quiz){
        quizTitleLabel.text = item.title
        quizDesriptionLabel.text = item.quizDescription
      
    }
}
