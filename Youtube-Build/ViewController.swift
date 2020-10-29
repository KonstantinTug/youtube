//
//  ViewController.swift
//  Youtube-Build
//
//  Created by Macbook Pro on 29.10.2020.
//  Copyright © 2020 Kostatyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let model = Model()
    var videos = [Video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        model.delegate = self
        
        model.fetchVideos()
        
    }
    
    func videosFetched(_ videos: [Video]) {
        self.videos = videos
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEO_CELL_ID, for: indexPath)
        cell.textLabel?.text = videos[indexPath.row].title
        return cell
    }
    
}

