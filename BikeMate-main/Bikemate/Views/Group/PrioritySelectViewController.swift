//
//  PrioritySelectViewController.swift
//  Bikemate
//
//  Created by s e on 2022/02/18.
//

import UIKit

class PrioritySelectViewController: UIViewController {

    @IBOutlet weak var groupLabel: UILabel!
    
    // var data: String = ""
    //data
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // self.groupLabel.text = data
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func checkButtonClicked(_ sender: Any) {
        guard let viewController = UIStoryboard(name: "Group", bundle: nil).instantiateViewController(withIdentifier: "groupingresultVC") as? GroupingResultViewController else { fatalError() }
    
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        //push -> pop
        
        self.navigationController?.popViewController(animated: true)
        
        
        //modal -> dismiss 끄기
//        self.dismiss(animated: true, completion: nil)
    }
    
}
