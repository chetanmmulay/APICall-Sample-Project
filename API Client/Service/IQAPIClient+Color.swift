//
//  IQAPIClient+Color.swift
//  API Client
//


import IQAPIClient
import Alamofire

extension IQAPIClient {

    @discardableResult
    static func colors(completionHandler: @escaping (_ result: Swift.Result<[Color], Error>) -> Void) -> DataRequest {
        let path = ITAPIPath.colors.rawValue
        return sendRequest(path: path, completionHandler: completionHandler)
    }

    @discardableResult
    static func color(id: Int,
                      completionHandler: @escaping (_ result: Swift.Result<Color, Error>) -> Void) -> DataRequest {
        let path = ITAPIPath.colors.rawValue + "/\(id)"
        return sendRequest(path: path, completionHandler: completionHandler)
    }
}
