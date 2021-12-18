//
//  TableViewCell.swift
//  TestApp
//
//  Created by Solly Paulose on 18/12/21.
//
import UIKit
import Foundation

enum Type : Int{
    case url = 0
    case appBundle = 1
}
struct Employee: Codable {
    var id : String
    var name: String
    var username: String
    var email : String
    var profile_image : String
    var address : String
    var street : String
    var suite : String
    var city : String
    var zipcode : String
    var geo : String
    var lat : String
    var lng : String
    var phone : String
    var website : String
    var company : String
    var catchPhrase : String
    var bs : String
   
}

