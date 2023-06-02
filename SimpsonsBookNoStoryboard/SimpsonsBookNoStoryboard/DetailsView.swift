//
//  DetailsView.swift
//  SimpsonsBookNoStoryboard
//
//  Created by Neethu Kuruvilla on 2/16/23.
//

//TODO:

import UIKit

class DetailsView: UIViewController {
    
    private let chosenSimsonName : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let chosenSimsonJob : UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    private let chosenSimpsonImage : UIImageView = {
        let image = UIImageView()
        
        return image
    }()
    
    var chosenSimpson : Simpson?
    //var chosenImage : UIImage
    //var chosenName : String = ""
    //var chosenJob : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(chosenSimpsonImage)
        
        view.backgroundColor = .white
        view.addSubview(chosenSimsonName)
        view.addSubview(chosenSimsonJob)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        chosenSimpsonImage.frame = CGRect(x: view.frame.width / 2 - 150, y: view.frame.height/2 - 350, width: 300, height: 500)
        chosenSimsonName.frame = CGRect(x: view.frame.width / 2 - 100, y: view.frame.height / 2 + 150, width: 200, height: 50)
        chosenSimsonJob.frame = CGRect(x: view.frame.width / 2 - 100, y: view.frame.height / 2 + 200, width: 200, height: 50)
        chosenSimpsonImage.image = chosenSimpson?.Image
        chosenSimpsonImage.contentMode = .scaleAspectFit
        
        chosenSimsonName.text = chosenSimpson?.Name
        
        chosenSimsonJob.text = chosenSimpson?.Job
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
