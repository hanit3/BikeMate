//
//  GroupCommunityMainViewController.swift
//  Bikemate
//
//  Created by s e on 2022/02/18.
//

import UIKit

class GroupCommunityMainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func freeBoardMoreButtonClicked(_ sender: Any) {
        guard let viewController = UIStoryboard(name: "Group", bundle: nil).instantiateViewController(withIdentifier: "freeboardVC") as? FreeBoardViewController else { fatalError() }
    
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func recruitBoardMoreButtonClicked(_ sender: Any) {
        guard let viewController = UIStoryboard(name: "Group", bundle: nil).instantiateViewController(withIdentifier: "recruitboardVC") as? RecruitBoardViewController else { fatalError() }
    
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func reRecommendButtonClicked(_ sender: Any) {
        guard let viewController = UIStoryboard(name: "Group", bundle: nil).instantiateViewController(withIdentifier: "priorityselectVC") as? PrioritySelectViewController else { fatalError() }
    
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func giveFeedbackButtonClicked(_ sender: Any) {
        guard let viewController = UIStoryboard(name: "Group", bundle: nil).instantiateViewController(withIdentifier: "feedbackVC") as? FeedbackViewController else { fatalError() }
    
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    
}
