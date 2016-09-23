//
//  GitHubAPIClient.swift
//  StrivrTest
//
//  Created by Lloyd W. Sykes on 9/22/16.
//  Copyright © 2016 Strivr, Inc. All rights reserved.
//

import Foundation
import Alamofire

class GitHubAPIClient {
    
    class func getCommitsForRepoByAuthor(completion: @escaping ([NSDictionary]?, Error?) -> ()) {
        
        Alamofire.request("\(Secrets.gitHubAPIURL)rails/rails/commits").responseJSON { (commitsByAuthorResponse) in
            
            if let gitHubData = commitsByAuthorResponse.result.value as? [NSDictionary] {
                
                print("Getting data back from GitHUB: \(gitHubData)")
                completion(gitHubData, nil)
                
            } else if let error = commitsByAuthorResponse.result.error {
                
                print("There was a network error in the GitHubAPIClient: \(error.localizedDescription)")
            }
        }
    }
}
