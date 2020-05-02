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
    @IBOutlet weak var difImage3: UIImageView!
    @IBOutlet weak var difImage2: UIImageView!
    @IBOutlet weak var difImage1: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        quizTitleLabel.text = nil
        quizDesriptionLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
       
    }
}

extension QuizCell {
    func configure(with item: Quiz){
        quizTitleLabel.text = item.title
        quizDesriptionLabel.text = item.quizDescription
        
        //The most godawful way to set this probably
        difImage1.tintColor = .lightGray
        difImage2.tintColor = .lightGray
        difImage3.tintColor = .lightGray
        if item.level == 1 {
            difImage1.tintColor = .yellow
        }
        else if item.level == 2 {
            difImage1.tintColor = .yellow
            difImage2.tintColor = .yellow
        }
        else if item.level == 3 {
            difImage1.tintColor = .yellow
            difImage2.tintColor = .yellow
            difImage3.tintColor = .yellow
        }
        
    }
    
    func setupUI() {
        quizImage.layer.cornerRadius = 20
        self.layer.cornerRadius = 15
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor(red: 196/255, green: 185/255, blue: 255/255, alpha: 0.5)
        }
}
