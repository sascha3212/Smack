//
//  Constants.swift
//  Smack
//
//  Created by Sascha Landegge on 13/01/2018.
//  Copyright © 2018 Codeunicum. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Succes: Bool) -> ()

//URL
let BASE_URL = "https://chattychatsaschal.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

//User defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


//Headers
let HEADER = ["Content-Type": "application/json; charset=utf-8"]
