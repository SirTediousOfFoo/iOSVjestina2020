//
//  ViewController.swift
//  QuizApp
//
//  Created by five on 28/04/2020.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var getQuizButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialSetup()

    }

    private func initialSetup() {
        getQuizButton.layer.cornerRadius = 10
    }
}

