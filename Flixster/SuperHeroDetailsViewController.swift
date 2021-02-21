//
//  SuperHeroDetailsViewController.swift
//  Flixster
//
//  Created by Siva on 2/21/21.
//

import UIKit

class SuperHeroDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var segueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)!

        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)!
        
        posterView.af.setImage(withURL: posterUrl)
        backdropView.af.setImage(withURL: backdropUrl)
    }
    /*
    @IBAction func onSegueButtonPressed(_ sender: Any) {
        print("loading movie video screen")
        dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "MovieVideoViewController", sender: nil)
    }
    
    // MARK: - Navigation
 
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let url = URL(string: "https://api.themoviedb.org/3/movie/297762/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let videoController = segue.destination as! MovieVideoViewController
        videoController.url = url
    }
 */
}
