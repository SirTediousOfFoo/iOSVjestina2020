//
//  ViewController.swift
//  QuizApp
//
//  Created by five on 28/04/2020.
//

import UIKit

class HomeViewController: UIViewController {

    //MARK:- Properties
    var quizList: [Quiz] = []
    
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
        quizTableView.dataSource = self
        quizTableView.estimatedRowHeight = 140
        quizTableView.rowHeight = 140
    }
    
    @IBAction func didRequestQuizes(_ sender: Any) {
        quizTableView.isHidden.toggle()
        quizTableView.reloadData()
    }
}

//MARK:- TableView functions

extension HomeViewController: UITableViewDelegate{
    
}

extension HomeViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4//quizList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let quizCell = tableView.dequeueReusableCell(
            withIdentifier: "QuizCell",
            for: indexPath) as! QuizCell
      //  quizCell.configure(with: quizList[indexPath.row])
        let mock = Quiz(id: 1, title: "Probni naslov", quizDescription: "Placeholder description hello how are you im good thank you and you oh just swell thanks", category: "Some", level: 2, image: "none", questions: [])
        quizCell.configure(with: mock)
        return quizCell
    }
    
    
}

