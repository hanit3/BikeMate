//
//  FreeBoardPostViewController.swift
//  Bikemate
//
//  Created by s e on 2022/02/20.
//

import UIKit

class FreeBoardPostViewController: UIViewController {

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

    @IBAction func writeButtonClicked(_ sender: Any) {
        guard let viewController = UIStoryboard(name: "Group", bundle: nil).instantiateViewController(withIdentifier: "freeboardwriteVC") as? FreeBoardWriteViewController else { fatalError() }
    
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}
