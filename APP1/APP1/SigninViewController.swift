
import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var fullnamelabel: UITextField!
    @IBOutlet weak var emailoutlet: UITextField!
    @IBOutlet weak var passwordoutlet: UITextField!
    @IBAction func signupbutton(_ sender: UIButton) {
        self.fullnamelabel.resignFirstResponder()
        self.emailoutlet.resignFirstResponder()
        self.passwordoutlet.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
