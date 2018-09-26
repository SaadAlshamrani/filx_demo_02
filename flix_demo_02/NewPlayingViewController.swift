//
//  NewPlayingViewController.swift
//  flix_demo_02
//
//  Created by user141686 on 9/26/18.
//  Copyright © 2018 user141686. All rights reserved.
//

import UIKit

class NewPlayingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/{movie_id}?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let request = URLRequest(url:url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data,response, error) in
        
         //This will run when the network request returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data{
                let dataDcictionary = try! JSONSerialization.jsonObject(with: data,options: []) as! [String: Any]
                print(dataDcictionary)
                let movies = detaDictionary["results"] as! [[String; Any]]
                for movie in movies{
                ["title"] as! Srting
               print(title)
            }
    
          }
        task.resume()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
