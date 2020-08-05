//
//  UserInfo.swift
//  class2
//
//  Created by Seyeon An on 2020/07/26.
//  Copyright © 2020 Seyeon An. All rights reserved.
//

import Foundation
import UIKit


struct UserInfo {
    var profileImage: UIImage? = UIImage(named: "bluePerson")
    var userName: String
    var statusMessage: String?
    var profileMusic: String?
}

extension UserInfo{
    static var myInfo: UserInfo = UserInfo(profileImage: UIImage(named: "person11"), userName: "안세연", statusMessage: "좋은 하루", profileMusic: "좋은 날")
    
    static var friendInfo: [UserInfo] = [
        UserInfo(profileImage: UIImage(named: "person1"), userName: "안세연", statusMessage: "안녕하세요 제 이름은 안세연입니다.", profileMusic: "cardigan - Taylor Swift"),
        UserInfo(profileImage: UIImage(named: "person2"), userName: "안나경", statusMessage: "2nd year in NYUAD ", profileMusic: "넌 나의 전부 (I can't take enough of you) - 임한별"),
        UserInfo(profileImage: UIImage(named: "person3"), userName: "류주연", statusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person4"), userName: "달쥬", statusMessage: "저는 흰 우유만 먹습니다. 저는 딸기우유나 초코우유를 먹지 않습니다. 그리고 저는 바나나우유도 먹지 않습니다. ", profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person5"), userName: "폰은정", statusMessage: nil, profileMusic: "사랑이 다른 사랑으로 잊혀지네 - 하림" ),
        UserInfo(profileImage: UIImage(named: "person6"), userName: "this is a string to see how the length of the string is controlled in different situations", statusMessage: "it is also a method to see if the ios code is designed properly and to see if I have done a good job in designing this code", profileMusic: "Making the profile music long as well is a way to see if all is well using my code!"),
        // devise a way for the profile music to show even when the music and the message both are long enough 
        UserInfo(profileImage: UIImage(named: "person7"), userName: "김태연", statusMessage: nil, profileMusic: "흔들리는 꽃들 속에서 네 샴푸향이 느껴진거야 - 장범준"),
        UserInfo(profileImage: UIImage(named: "person8"), userName: "세상에서 제일 돈이 많은 사람은 워렌버핏이 아닌 안세연이다.", statusMessage: nil, profileMusic: nil),
        UserInfo(profileImage: UIImage(named: "person9"), userName: "박재범", statusMessage: "💋", profileMusic: "오빠차 - Show Me The Money"),
        UserInfo(profileImage: UIImage(named: "person10"), userName: "권예현", statusMessage: "더워죽겠당.. ", profileMusic: "Red - Taylor Swift"),
        UserInfo(profileImage: UIImage(named: "person11"), userName: "Dohyun Brian Choi", statusMessage: "I got into YALE", profileMusic: "하늘의 은혜 - 예수전도단"),
        UserInfo(profileImage: UIImage(named: "person4"), userName: "용혜림", statusMessage: "친구들이 생일 파티 해줬어요!", profileMusic: "Birthday - Anne Marie"),
    
    ]
}
