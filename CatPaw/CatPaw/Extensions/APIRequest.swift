//
//  APIRequest.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 06.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

extension BreedsTableViewController {
    
    func fetchCatsData() {
        if Reachability.isConnectedToNetwork() {
            let urlBreeds = "https://api.thecatapi.com/v1/breeds"
            
            guard let validUrlBreeds = URL(string: urlBreeds) else { print("Link not valid!"); return}
            URLSession.shared.dataTask(with: validUrlBreeds) { (data, response, error) in
                
                if let errorTask = error, let responseTask = response{ print(errorTask.localizedDescription); print(responseTask) }
                
                guard response != nil else { print("Error Response"); return }
                guard let dataCats = data else { return }
                do{
                    let jsonParsingBreedsData = try JSONDecoder().decode([DataBreeds].self, from: dataCats)
                    allDataSomeReverseBreeds = jsonParsingBreedsData
                    
                    //For fair play rating
                    self.reversedAnyData()
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }catch{
                    print("Error")
                }
                
                do{
                    let jsonParsingCatsData = try JSONDecoder().decode([DataBreeds].self, from: dataCats)
                    allDataBreeds = jsonParsingCatsData
                    DispatchQueue.main.async {
                        self.activityIndecator.stopAnimating()
                    }
                }catch{
                    print("Error")
                }
            }.resume()
        } else {
            let alertController = UIAlertController(title: "Oops", message: "Turn on Mobile Data or use Wi-Fi to access the CatPaw😸", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
                self.fetchCatsData()
            }
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    func reversedAnyData() {
        for (index, _) in allDataSomeReverseBreeds.enumerated() {
            
            switch allDataSomeReverseBreeds[index].grooming{
            case 1: allDataSomeReverseBreeds[index].grooming = 5
            case 2: allDataSomeReverseBreeds[index].grooming = 4
            case 3: allDataSomeReverseBreeds[index].grooming = 3
            case 4: allDataSomeReverseBreeds[index].grooming = 2
            case 5: allDataSomeReverseBreeds[index].grooming = 1
            default:
                break
            }
            switch allDataSomeReverseBreeds[index].health_issues {
            case 1: allDataSomeReverseBreeds[index].health_issues = 5
            case 2: allDataSomeReverseBreeds[index].health_issues = 4
            case 3: allDataSomeReverseBreeds[index].health_issues = 3
            case 4: allDataSomeReverseBreeds[index].health_issues = 2
            case 5: allDataSomeReverseBreeds[index].health_issues = 1
            default:
                break
            }
            
            switch allDataSomeReverseBreeds[index].shedding_level {
            case 1: allDataSomeReverseBreeds[index].shedding_level = 5
            case 2: allDataSomeReverseBreeds[index].shedding_level = 4
            case 3: allDataSomeReverseBreeds[index].shedding_level = 3
            case 4: allDataSomeReverseBreeds[index].shedding_level = 2
            case 5: allDataSomeReverseBreeds[index].shedding_level = 1
            default:
                break
            }
            
            switch allDataSomeReverseBreeds[index].vocalisation{
            case 1: allDataSomeReverseBreeds[index].vocalisation = 5
            case 2: allDataSomeReverseBreeds[index].vocalisation = 4
            case 3: allDataSomeReverseBreeds[index].vocalisation = 3
            case 4: allDataSomeReverseBreeds[index].vocalisation = 2
            case 5: allDataSomeReverseBreeds[index].vocalisation = 1
            default:
                break
            }
        }
    }
}


