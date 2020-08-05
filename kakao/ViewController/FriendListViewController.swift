//
//  FriendListViewController.swift
//  class2
//
//  Created by Seyeon An on 2020/07/26.
//  Copyright © 2020 Seyeon An. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController {
    
    var tableView: UITableView = UITableView()
    
    var testData: [UserInfo] = UserInfo.friendInfo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        tableView.dataSource = self
        setUp()
    }
    
    private func setUp(){
        view.addSubview(tableView)
        tableView.register(FriendProfileTableViewCell.self, forCellReuseIdentifier: "FriendProfileTableViewCell")
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    

       
}

extension FriendListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        testData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendProfileTableViewCell") as! FriendProfileTableViewCell
        cell.configure(userInfo: testData[indexPath.row])
        return cell
    }
}


