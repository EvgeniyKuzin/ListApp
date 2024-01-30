//
//  ListViewController.swift
//  ListApp
//
//  Created by Evgeniy Kuzin on 30.01.2024.
//

import UIKit

class ListViewController: UITableViewController {
    
    private var musicCollection = Track.getMusicCollection()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80 // установка высоты ячеек
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? TrackDetailsViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC?.track = musicCollection[indexPath.row]
    }
    
}



// MARK:- extension for
extension ListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        musicCollection.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration() // присваиваю свойству настройки по умолчанию
        let track = musicCollection[indexPath.row]
        content.text = track.track
        content.secondaryText = track.album
        content.image = UIImage(named: track.album)
        content.imageProperties.cornerRadius = tableView.rowHeight / 9
        cell.contentConfiguration = content // возвращаю ячейке кастомные настройки
        return cell
    }
}
