import UIKit
import WebKit


class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://pixochi.github.io/native-camera-in-mobile-browsers/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
