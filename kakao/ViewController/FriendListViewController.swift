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
    
    var emailButton = UIButton()
    var friendLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        setUp()
    }
    
    private func setUp(){
        view.backgroundColor = .white
        
        view.addSubview(emailButton)
        emailButton.setBackgroundImage(UIImage(named: "emailbutton"), for: .normal)
        emailButton.snp.makeConstraints { make in
            make.top.trailing.equalToSuperview().inset(20)
            make.size.equalTo(30)
            emailButton.addTarget(self, action: #selector(didTap), for: .touchUpInside)
            
        view.addSubview(tableView)
        tableView.register(FriendProfileTableViewCell.self, forCellReuseIdentifier: "FriendProfileTableViewCell")
        tableView.snp.makeConstraints { make in
            make.top.equalTo(emailButton.snp.bottom).offset(10)
            make.leading.trailing.bottom.equalToSuperview()
        }
            
        view.addSubview(friendLabel)
        friendLabel.text = "친구"
        friendLabel.textColor = .black
        friendLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().inset(30)
        }
    }
}
    
    @objc func didTap() {
        
        let vc = EmailViewController()
        vc.modalPresentationStyle = .overCurrentContext
        present(vc,animated:true)
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




