//
//  WebViewController.swift
//  SwiftUISample
//
//  Created by 長谷川司 on 2025/08/07.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    private var webView: WKWebView!
    private var toolbar: UIToolbar!
    private var activityIndicator: UIActivityIndicatorView!
    
    private let toolbarHeight: CGFloat = 44.0

    private let initialURLString: String

    init(urlString: String) {
        self.initialURLString = urlString
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented!")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupWebView()
        setupToolbar()
        setupLayout()
        setupIndicator()
        
        guard !initialURLString.isEmpty,
            let url = URL(string: initialURLString) else {
            fatalError(Error.invalidURL.errorMessage)
        }
        let request = URLRequest(url: url)
        webView.load(request)
    }

    private func setupWebView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        webView.translatesAutoresizingMaskIntoConstraints = false
    }

    private func setupToolbar() {
        toolbar = UIToolbar()
        toolbar.translatesAutoresizingMaskIntoConstraints = false
        let back = UIBarButtonItem(
            image: UIImage(systemName: "chevron.backward"),
            style: .plain,
            target: self,
            action: #selector(goBack)
        )
        let forward = UIBarButtonItem(
            image: UIImage(systemName: "chevron.forward"),
            style: .plain,
            target: self,
            action: #selector(goForward)
        )
        let refresh = UIBarButtonItem(
            barButtonSystemItem: .refresh,
            target: self,
            action: #selector(refresh)
        )
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        toolbar.setItems([back, forward, space, refresh], animated: false)
        back.isEnabled = false
        forward.isEnabled = false
    }
    
    private func setupLayout() {
        let stackView = UIStackView(arrangedSubviews: [webView, toolbar])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            toolbar.heightAnchor.constraint(equalToConstant: toolbarHeight)
        ])
    }
    
    private func setupIndicator() {
        activityIndicator = UIActivityIndicatorView(style: .medium)
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: activityIndicator)
    }
    
    // MARK: - Toolbar Actions
    @objc
    private func goBack() {
        if webView.canGoBack { webView.goBack() }
    }

    @objc
    private func goForward() {
        if webView.canGoForward { webView.goForward() }
    }

    @objc
    private func refresh() {
        webView.reload()
    }
}

// MARK: - WKUIDelegate
extension WebViewController: WKUIDelegate {}

// MARK: - WKNavigationDelegate
extension WebViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
        
        if let items = toolbar.items {
            items[0].isEnabled = webView.canGoBack
            items[2].isEnabled = webView.canGoForward
        }
    }
    
    private func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
    }
    
    private func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
    }
}

extension WebViewController {
    enum Error {
        case invalidURL
        
        var errorMessage: String {
            switch self {
            case .invalidURL:
                "URLが不正です。"
            }
        }
    }
}
