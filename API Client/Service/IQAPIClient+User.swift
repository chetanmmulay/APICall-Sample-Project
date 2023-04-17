//
//  IQAPIClient+User.swift
//  Institute
//


import IQAPIClient
import Alamofire

extension IQAPIClient {

    @discardableResult
    static func users(completionHandler: @escaping (_ result: Swift.Result<[User], Error>) -> Void) -> DataRequest {
        let path = ITAPIPath.users.rawValue
        return sendRequest(path: path, completionHandler: completionHandler)
    }

    @discardableResult
    static func user(id: Int,
                     completionHandler: @escaping (_ result: Swift.Result<User, Error>) -> Void) -> DataRequest {
        let path = ITAPIPath.users.rawValue + "/\(id)"
        return sendRequest(path: path, completionHandler: completionHandler)
    }

    #if compiler(>=5.6.0) && canImport(_Concurrency)

    @available(iOS 13, *)
    static func asyncAwaitUsers() async throws -> [User] {
        let path = ITAPIPath.users.rawValue
        return try await sendRequest(path: path)
    }

    #endif
}
