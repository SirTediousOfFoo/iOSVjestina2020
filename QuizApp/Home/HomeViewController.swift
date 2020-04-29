//
//  ViewController.swift
//  QuizApp
//
//  Created by five on 28/04/2020.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK:- Properties
    var quizzes: Quizes?
    
    //MARK:- Outlets
    @IBOutlet weak var getQuizButton: UIButton!
    @IBOutlet weak var quizTableView: UITableView!
    @IBOutlet weak var errorView: UIView!
    
    //MARK:- Lifecycle functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialSetup()

    }

    private func initialSetup() {
        getQuizButton.layer.cornerRadius = 10
        //TODO:- getQuizes goes here
        quizTableView.isHidden = true
        errorView.isHidden = true
    }
}

