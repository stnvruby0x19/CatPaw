//
//  APIRequestImages.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 24.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

extension RandomCatController {
    
    func fetchCatsImageData() {
        if Reachability.isConnectedToNetwork(){
            let urlCatsImage = "https://api.thecatapi.com/v1/images/search"
            
            guard let validUrlCatsImages = URL(string: urlCatsImage) else { print("Link not valid!"); return}
            URLSession.shared.dataTask(with: validUrlCatsImages) { (data, response, error) in
                
                if let errorTask = error, let responseTask = response{ print(errorTask.localizedDescription); print(responseTask) }
                
                guard response != nil else { print("Error Response"); return }
                guard let dataCats = data else { return }
                do{
                    let jsonParsingCatsData = try JSONDecoder().decode([DataCats].self, from: dataCats)
                    catImagesData = jsonParsingCatsData
                    print(catImagesData)
                    DispatchQueue.main.async {
                        self.view().catImage.image = UIImage.gif(url: catImagesData[0].url)
                        self.view().activityIndecator.stopAnimating()
                    }
                    
                }catch{
                    print("Error")
                }
                
            }.resume()
        } else {
            let alertController = UIAlertController(title: "Oops", message: "Turn on Mobile Data or use Wi-Fi to access the CatPaw😸", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
                self.fetchCatsImageData()
            }
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
        
    }
}


