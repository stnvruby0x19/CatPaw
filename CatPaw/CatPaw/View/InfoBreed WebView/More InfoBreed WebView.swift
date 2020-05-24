//
//  More InfoBreed WebView.swift
//  CatPaw
//
//  Created by Oleg Stanovsky on 11.05.2020.
//  Copyright © 2020 Oleg Stanovsky. All rights reserved.
//

import WebKit

class MoreInfoWebView: UIView {
    
    let breedWebView: WKWebView = {
        let breedWebView = WKWebView()
        breedWebView.translatesAutoresizingMaskIntoConstraints = false
        return breedWebView
    }()
    let activityIndecator: UIActivityIndicatorView = {
        let activityIndecator = UIActivityIndicatorView(style: .large)
        activityIndecator.color = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        activityIndecator.translatesAutoresizingMaskIntoConstraints = false
        return activityIndecator
    }()
    
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        breedWebView.navigationDelegate = self
        addSubview(breedWebView)
        breedWebView.addSubview(activityIndecator)
        
        NSLayoutConstraint.activate([
            breedWebView.topAnchor.constraint(equalTo: topAnchor),
            breedWebView.bottomAnchor.constraint(equalTo: bottomAnchor),
            breedWebView.trailingAnchor.constraint(equalTo: trailingAnchor),
            breedWebView.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            activityIndecator.centerYAnchor.constraint(equalTo: breedWebView.centerYAnchor),
            activityIndecator.centerXAnchor.constraint(equalTo: breedWebView.centerXAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MoreInfoWebView: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndecator.stopAnimating()
    }

}

