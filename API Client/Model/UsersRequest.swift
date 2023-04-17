//
//  UsersRequest.swift
//  API Client
//
//  Created by Chetan Mulay on 10/01/23.

//

import Foundation

struct UsersRequest: Encodable {
    let pageIndex: Int
    let pageSize: Int
}
