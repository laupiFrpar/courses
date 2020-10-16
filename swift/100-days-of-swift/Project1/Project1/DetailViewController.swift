//
//  DetailViewController.swift
//  Project1
//
//  Created by Pierre-Louis LAUNAY on 16/04/2020.
//  Copyright © 2020 Pierre-Louis LAUNAY. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var ImageView: UIImageView!
    var selectedImage: String?
    var number: Int?
    var total: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Picture"
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            title = selectedImage
            title = "Picture \(number!) of \(total!)"
            ImageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
