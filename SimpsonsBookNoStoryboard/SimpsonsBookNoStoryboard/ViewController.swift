//
//  ViewController.swift
//  SimpsonsBookNoStoryboard
//
//  Created by Neethu Kuruvilla on 2/16/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var Simpsons = [Simpson]()
    private var selectedSimpson : Simpson?
    
    private let TableView: UITableView = {
        let table = UITableView()
        
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(TableView)
        view.backgroundColor = .cyan
        TableView.delegate = self
        TableView.dataSource = self
        
        let Homer = Simpson(Name: "Homer Simpson", Job: "Nuclear Safety Inspector", Image: UIImage(named: "Homer")!)
        let Marge = Simpson(Name: "Marge Simpson", Job: "Housewife", Image: UIImage(named: "Marge")!)
        let Bart = Simpson(Name: "Bart Simpson", Job: "Student", Image: UIImage(named: "Bart")!)
        let Lisa = Simpson(Name: "Lisa Simpson", Job: "Student", Image: UIImage(named: "Lisa")!)
        let Maggie = Simpson(Name: "Maggie Simpson", Job: "Baby", Image: UIImage(named: "Maggie")!)
        
        Simpsons.append(Homer)
        Simpsons.append(Marge)
        Simpsons.append(Bart)
        Simpsons.append(Lisa)
        Simpsons.append(Maggie)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        TableView.frame = view.bounds
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Simpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = Simpsons[indexPath.row].Name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*
        selectedSimpson = Simpsons[indexPath.row]
        let nextVC = DetailsView()
        nextVC.chosenSimpson = selectedSimpson
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true, completion: nil)
        */
        if let navi = navigationController{
            selectedSimpson = Simpsons[indexPath.row]
            let nextVC = DetailsView()
            nextVC.chosenSimpson = selectedSimpson
            navi.pushViewController(nextVC, animated: true)
        }
    }
    
}

