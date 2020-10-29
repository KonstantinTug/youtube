//
//  Constants.swift
//  Youtube-Build
//
//  Created by Macbook Pro on 29.10.2020.
//  Copyright © 2020 Kostatyy. All rights reserved.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyBP5xwqzVNZPjp3RunaloyzcBYX-Xkunuc"
    static var PLAYLIST_ID = "RDCMUC2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEO_CELL_ID = "videoId"
}
