//
//  GroupingResultViewController.swift
//  Bikemate
//
//  Created by s e on 2022/02/18.
//

import UIKit

class GroupingResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        BoardManager.shared.boardArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupingresulttableviewCell", for: indexPath) as! GroupingResultTableViewCell
        cell.selectAction = {
            //선택했을 때 이벤트
            
            
        }
        
        
        return cell
    }
    

    @IBAction func completeButtonClicked(_ sender: Any) {
        guard let viewController = UIStoryboard(name: "Group", bundle: nil).instantiateViewController(withIdentifier: "groupcommunitymainVC") as? GroupCommunityMainViewController else { fatalError() }
    
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}

class GroupingResultTableViewCell: UITableViewCell {
    
    var selectAction: (() -> Void)?
    
    
    @IBOutlet weak var groupNameLabel: UILabel!
    @IBOutlet weak var groupTypeLabel: UILabel!
    
    @IBAction func selected(_ sender: Any) {
        selectAction!()
    }
    
}

