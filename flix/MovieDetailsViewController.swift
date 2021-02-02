//
//  MovieDetailsViewController.swift
//  flix
//
//  Created by Luciano Handal on 2/2/21.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let posterURL = URL(string: "https://image.tmdb.org/t/p/w185\(movie["poster_path"] as? String ?? "")")
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780\(movie["backdrop_path"] as? String ?? "")")
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        posterView.af_setImage(withURL: posterURL!)
        backdropView.af_setImage(withURL: backdropURL!)
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
