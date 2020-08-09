//
//  UserInfo.swift
//  class2
//
//  Created by Seyeon An on 2020/07/26.
//  Copyright © 2020 Seyeon An. All rights reserved.
//

import Foundation
import UIKit


struct EmailInfo {
    var user: String?
    var title: String
    var content: String
    var documents: String?
    var isRead: Bool = false
}


extension EmailInfo{
    static var emailInfo: EmailInfo = EmailInfo(user: "안세연", title: "안세연", content: "좋은 하루", documents: "좋은 날", isRead: false)
    
    static var dataInfo: [EmailInfo] = [
        EmailInfo(user: "A", title: "안다르", content: "andar 입금 확인 메일입니다.", documents: "입금 확인서", isRead: false),
        EmailInfo(user: "C", title: "쿠팡", content: "안*님 주문하신 내역을 확인해주세요.", documents: nil, isRead: false),
        EmailInfo(user: "T", title: "T아이디", content: "SK텔레콤 T아이디 약관 동의 내용 안내", documents: "약관 동의서", isRead: false),
        EmailInfo(user: "N", title: "넷플릭스", content: "새로운 로그인 알림 : 회원님의 넷플릭스 계정에서 새로운 로그인 기록이 있습니다.", documents: nil, isRead: false),
        EmailInfo(user: "M", title: "뮬라웨어", content: "mulawear 발송 메일입니다.", documents: "뮬라웨어에서 주문한 물품을 발송해드렸습니다.", isRead: false),
        EmailInfo(user: "G", title: "Google Maps Timeline", content: "세연님의 7월 업데이트: 이 타임라인 이메일은 방문한 장소", documents: "7월 업데이트", isRead: false),
        EmailInfo(user: "A", title: "안다르", content: "andar 입금 확인 메일입니다.", documents: "입금 확인서", isRead: false),
        EmailInfo(user: "C", title: "쿠팡", content: "안*님 주문하신 내역을 확인해주세요.", documents: nil, isRead: false),
        EmailInfo(user: "T", title: "T아이디", content: "SK텔레콤 T아이디 약관 동의 내용 안내", documents: "약관 동의서", isRead: false),
        EmailInfo(user: "N", title: "넷플릭스", content: "새로운 로그인 알림 : 회원님의 넷플릭스 계정에서 새로운 로그인 기록이 있습니다.", documents: nil, isRead: false),
        EmailInfo(user: "M", title: "뮬라웨어", content: "mulawear 발송 메일입니다.", documents: "뮬라웨어에서 주문한 물품을 발송해드렸습니다.", isRead: false),
        EmailInfo(user: "G", title: "Google Maps Timeline", content: "세연님의 7월 업데이트: 이 타임라인 이메일은 방문한 장소", documents: "7월 업데이트", isRead: false),
        EmailInfo(user: "A", title: "안다르", content: "andar 입금 확인 메일입니다.", documents: "입금 확인서", isRead: false),
        EmailInfo(user: "C", title: "쿠팡", content: "안*님 주문하신 내역을 확인해주세요.", documents: nil, isRead: false),
        EmailInfo(user: "T", title: "T아이디", content: "SK텔레콤 T아이디 약관 동의 내용 안내", documents: "약관 동의서", isRead: false),
        EmailInfo(user: "N", title: "넷플릭스", content: "새로운 로그인 알림 : 회원님의 넷플릭스 계정에서 새로운 로그인 기록이 있습니다.", documents: nil, isRead: false),
        EmailInfo(user: "M", title: "뮬라웨어", content: "mulawear 발송 메일입니다.", documents: "뮬라웨어에서 주문한 물품을 발송해드렸습니다.", isRead: false),
        EmailInfo(user: "G", title: "Google Maps Timeline", content: "세연님의 7월 업데이트: 이 타임라인 이메일은 방문한 장소", documents: "7월 업데이트", isRead: false),
    ]
}
