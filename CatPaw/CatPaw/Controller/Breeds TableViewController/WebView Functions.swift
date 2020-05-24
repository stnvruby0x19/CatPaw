//
//  WebView Functions.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 20.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import UIKit

extension BreedsTableViewController {
    // Wiki
    func getWebWiki(url: String?, button: UIButton, ifSuccessAction: Selector, ifErrorAction: Selector){
        var urlBreed = ""
        
        if let validUrlBreed = url {
            urlBreed = validUrlBreed
        } else {
            urlBreed = "200"
        }
        
        if urlBreed != "200" {
            
            moreInfoWiki.view().activityIndecator.startAnimating()
            guard let request = URL(string: urlBreed) else { return }
            let urlRequest = URLRequest(url: request)
            moreInfoWiki.view().breedWebView.load(urlRequest)
            
            
            button.addTarget(self, action: ifSuccessAction, for: .touchDown)
        } else {
            button.addTarget(self, action: ifErrorAction, for: .touchDown)
        }
        
    }
    
    func getMoreInfoWikiControllerAndAlert() {
        if Reachability.isConnectedToNetwork() {
            navigationController?.present(moreInfoWiki, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title: "Oops", message: "Turn on Mobile Data or use Wi-Fi to access the CatPaw😸", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
        
    }
    
    @objc func getWikipediaWeb() {
        getMoreInfoWikiControllerAndAlert()
    }
    
    @objc func getWikiAlert() {
        
        let alertController = UIAlertController(title: "Oops", message: "This page isn't available yet🙀", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    // Vcaho
    func getWebVcaho(url: String?, button: UIButton, ifSuccessAction: Selector, ifErrorAction: Selector){
        var urlBreed = ""
        
        if let validUrlBreed = url {
            urlBreed = validUrlBreed
        } else {
            urlBreed = "200"
        }
        
        if urlBreed != "200" {
            
            moreInfoVcaho.view().activityIndecator.startAnimating()
            guard let request = URL(string: urlBreed) else { return }
            let urlRequest = URLRequest(url: request)
            moreInfoVcaho.view().breedWebView.load(urlRequest)
            
            button.addTarget(self, action: ifSuccessAction, for: .touchDown)
        } else if urlBreed == "200" {
            button.addTarget(self, action: ifErrorAction, for: .touchDown)
        } else {
            button.addTarget(self, action: ifErrorAction, for: .touchDown)
        }
        
    }
    
    private func getMoreInfoVcahoControllerAndAlert() {
        if Reachability.isConnectedToNetwork() {
            navigationController?.present(moreInfoVcaho, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title: "Oops", message: "Turn on Mobile Data or use Wi-Fi to access the CatPaw😸", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
        
    }
    
    @objc func getVcahoWeb() {
        getMoreInfoVcahoControllerAndAlert()
    }
    
    @objc func getVcahoAlert() {
        
        let alertController = UIAlertController(title: "Oops", message: "This page isn't available yet🙀", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    //Vet
    func getWebVet(url: String?, button: UIButton, ifSuccessAction: Selector, ifErrorAction: Selector){
        var urlBreed = ""
        
        if let validUrlBreed = url {
            urlBreed = validUrlBreed
        } else {
            urlBreed = "200"
        }
        
        if urlBreed != "200" {
            
            moreInfoVet.view().activityIndecator.startAnimating()
            guard let request = URL(string: urlBreed) else { return }
            let urlRequest = URLRequest(url: request)
            moreInfoVet.view().breedWebView.load(urlRequest)
            
            button.addTarget(self, action: ifSuccessAction, for: .touchDown)
        } else if urlBreed == "200" {
            button.addTarget(self, action: ifErrorAction, for: .touchDown)
        } else {
            button.addTarget(self, action: ifErrorAction, for: .touchDown)
        }
        
    }
    
    
    
    private func getMoreInfoVetControllerAndAlert() {
        if Reachability.isConnectedToNetwork() {
            navigationController?.present(moreInfoVet, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title: "Oops", message: "Turn on Mobile Data or use Wi-Fi to access the CatPaw😸", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
        
    }
    
    @objc func getVetWeb() {
        getMoreInfoVetControllerAndAlert()
    }
    
    @objc func getVetAlert() {
        
        let alertController = UIAlertController(title: "Oops", message: "This page isn't available yet🙀", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    //Cfa
    func getWebCfa(url: String?, button: UIButton, ifSuccessAction: Selector, ifErrorAction: Selector){
        var urlBreed = ""
        
        if let validUrlBreed = url {
            urlBreed = validUrlBreed
        } else {
            urlBreed = "200"
        }
        
        if urlBreed != "200" {
            
            moreInfoCfa.view().activityIndecator.startAnimating()
            guard let request = URL(string: urlBreed) else { return }
            let urlRequest = URLRequest(url: request)
            moreInfoCfa.view().breedWebView.load(urlRequest)
            
            button.addTarget(self, action: ifSuccessAction, for: .touchDown)
        } else if urlBreed == "200" {
            button.addTarget(self, action: ifErrorAction, for: .touchDown)
        } else {
            button.addTarget(self, action: ifErrorAction, for: .touchDown)
        }
        
    }
    
    private func getMoreInfoCfaControllerAndAlert() {
        if Reachability.isConnectedToNetwork() {
            navigationController?.present(moreInfoCfa, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title: "Oops", message: "Turn on Mobile Data or use Wi-Fi to access the CatPaw😸", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
        
    }
    
    @objc func getCfaWeb() {
        getMoreInfoCfaControllerAndAlert()
    }
    
    @objc func getCfaAlert() {
        
        let alertController = UIAlertController(title: "Oops", message: "This page isn't available yet🙀", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
        
    }
}
