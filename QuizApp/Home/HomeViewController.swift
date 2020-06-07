//
//  ViewController.swift
//  QuizApp
//
//  Created by five on 28/04/2020.
//

import UIKit
import PromiseKit

class HomeViewController: UIViewController {

    //MARK:- Properties
    var quizList: [Quiz] = []
    
    //MARK:- Outlets
    @IBOutlet private weak var getQuizButton: UIButton!
    @IBOutlet private weak var quizTableView: UITableView!
    @IBOutlet private weak var errorView: UIView!
    @IBOutlet private weak var funFactView: UIView!
    @IBOutlet weak var factCountLabel: UILabel!
    
    //MARK:- Lifecycle functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initialSetup()

        
    }

    private func initialSetup() {
        getQuizButton.layer.cornerRadius = 20
        //TODO:- getQuizes goes here
        quizTableView.isHidden = true
        errorView.isHidden = true
        funFactView.isHidden = true
        quizTableView.dataSource = self
    }
    
    //MARK:- Functionality
    @IBAction private func didRequestQuizes(_ sender: Any) {
        quizTableView.isHidden.toggle()
        quizTableView.reloadData()
        firstly{
               APIManager.request(
                   [Quiz].self,
                   path: "https://iosquiz.herokuapp.com/api/quizzes",
                   keyPath: "quizzes")
           }.done { [weak self] quizes in
                self?.quizList = quizes
                self?.quizTableView.isHidden = false
                self?.quizTableView.reloadData()
                self?.funFactView.isHidden = false
            let number = self?.countNBAs()
            self?.factCountLabel.text = "There are \(number ?? 0) questions that contain the word 'NBA'"
           }.catch{ [weak self] error in
                print(error.localizedDescription)
                self?.quizTableView.isHidden = true
                self?.errorView.isHidden = false
           }
    }
    
    private func countNBAs() -> Int {
        var occurences = 0
        for quiz in quizList {
            for q in quiz.questions {
                if q.question.contains("NBA") {
                    occurences += 1
                }
            }
        }
        return occurences
    }
}

//MARK:- TableView functions

extension HomeViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section"
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizList.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let quizCell = tableView.dequeueReusableCell(
            withIdentifier: "QuizCell",
            for: indexPath) as! QuizCell
        quizCell.configure(with: quizList[indexPath.row])

        return quizCell
    }
    
    
}

