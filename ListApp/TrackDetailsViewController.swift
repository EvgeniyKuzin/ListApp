//
//  TrackDetailsViewController.swift
//  ListApp
//
//  Created by Evgeniy Kuzin on 30.01.2024.
//

import UIKit

class TrackDetailsViewController: UIViewController {

    @IBOutlet var artCoverImageView: UIImageView!
    @IBOutlet var trackLabel: UILabel!
    @IBOutlet var albumLabel: UILabel!
    @IBOutlet var liricsLabel: UILabel!
    
    var track: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        artCoverImageView.image = UIImage(named: track.album)
        trackLabel.text = "Nirvana - \(track.track)"
        albumLabel.text = "track from album \(track.album)"
        liricsLabel.text = track.lirics
    }
}
