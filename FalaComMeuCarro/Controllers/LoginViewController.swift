import Foundation
import UIKit

class LoginViewController: UIViewController, FBSDKLoginButtonDelegate {
	
	@IBOutlet weak var loginButton: FBSDKLoginButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupFacebookButton()
	}

	private func goToHomeViewController() {
        performSegue(LoginViewController.Segue.Cars)
	}
	
	private func setupFacebookButton() {
		loginButton.readPermissions = ["email"]
		loginButton.delegate = self
	}
	
	func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
		
		if !result.isCancelled {
			goToHomeViewController()
		} else {
			UIAlertView(title: "Hey", message: "We need you to login, do it please", delegate: nil, cancelButtonTitle: "ok").show()
		}
	}
	
	func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
		print("")
	}
	
}