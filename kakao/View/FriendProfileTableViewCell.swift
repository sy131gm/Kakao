//
//  FriendProfileTableViewCell.swift
//  class2
//
//  Created by Seyeon An on 2020/07/26.
//  Copyright © 2020 Seyeon An. All rights reserved.
//

import UIKit
import SnapKit

class FriendProfileTableViewCell: UITableViewCell {
    var profileImageButton = UIButton()
    var userNameLabel = UILabel()
    var statusMessageLabel = UILabel()
    var profileMusicButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(){
        contentView.addSubview(profileImageButton)
        profileImageButton.snp.makeConstraints { make in
            make.leading.top.bottom.equalToSuperview().inset(10)
            make.size.equalTo(40)
        }
        //profileImageButton.addTarget(self, action: #selector(didTapProfileImage), for: .touchUpInside)
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 5
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.leading.equalTo(profileImageButton.snp.trailing).offset(10)
            make.centerY.equalToSuperview()
      
        }

        stackView.addArrangedSubview(userNameLabel)
        stackView.addArrangedSubview(statusMessageLabel)
        
        userNameLabel.font = UIFont.defaultBold
        userNameLabel.textColor = .black
        
        statusMessageLabel.font = UIFont.defaultFont
        statusMessageLabel.textColor = UIColor.black.withAlphaComponent(0.5)
        
        contentView.addSubview(profileMusicButton)
          profileMusicButton.snp.makeConstraints{ make in
            make.trailing.equalToSuperview().inset(10)
            make.centerY.equalToSuperview()
            make.leading.equalTo(stackView.snp.trailing).offset(10)
            //priority medium
            make.width.lessThanOrEqualTo(UIScreen.main.bounds.width / 3).priority(.medium)
          }
        
        profileMusicButton.setTitleColor(.systemGreen, for: .normal)
        profileMusicButton.contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        profileMusicButton.titleLabel?.font = UIFont.defaultFont
        profileMusicButton.layer.borderColor = UIColor.systemGreen.cgColor
        profileMusicButton.layer.borderWidth = 1
        profileMusicButton.layer.cornerRadius = 10
        profileMusicButton.setContentHuggingPriority(.defaultHigh, for: .horizontal)
    
    }
    
    func configure(userInfo: UserInfo){
        profileImageButton.setBackgroundImage(userInfo.profileImage, for: .normal)
        userNameLabel.text = userInfo.userName
        statusMessageLabel.text = userInfo.statusMessage
        profileMusicButton.setTitle(userInfo.profileMusic, for: .normal)
        //table view 재사용되니까 매번 새로 state를 초기화 해줘야 한다.
        if let music = userInfo.profileMusic {
            profileMusicButton.setTitle(music, for: .normal)
            profileMusicButton.isHidden = false
        } else {
            profileMusicButton.isHidden = true
        }
    }
    

       
   
    
    
}
    


