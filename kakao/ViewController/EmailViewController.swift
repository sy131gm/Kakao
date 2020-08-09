//
//  EmailViewController.swift
//  kakao
//
//  Created by Seyeon An on 2020/08/06.
//  Copyright © 2020 Seyeon An. All rights reserved.
//

import UIKit

class EmailViewController: UIViewController {
    var tableView: UITableView = UITableView()
    
    var testData: [EmailInfo] = EmailInfo.dataInfo
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        setUp()
    }
    
    private func setUp(){
        view.addSubview(tableView)
        tableView.register(EmailTableViewCell.self, forCellReuseIdentifier: "EmailTableViewCell")
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension EmailViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        testData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmailTableViewCell") as! EmailTableViewCell
        cell.configure(emailInfo: testData[indexPath.row])
        return cell
    }
}



