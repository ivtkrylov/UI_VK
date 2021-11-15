//
//  myViewController.swift
//  Weather
//
//  Created by Иван Крылов on 10.11.2021.
//

import UIKit

class myViewController: UIViewController {

    
  
    @IBOutlet var FriendsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FriendsTableView.delegate = self
        FriendsTableView.dataSource = self
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

}

extension myViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension myViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = FriendsTableView.dequeueReusableCell(withIdentifier: "FerstTableViewCell", for: indexPath)
        return cell
    }
}
