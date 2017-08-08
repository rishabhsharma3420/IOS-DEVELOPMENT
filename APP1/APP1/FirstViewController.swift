
import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var passwordpopup: UITextField!
    
    @IBOutlet weak var emailpopup: UITextField!
    
    @IBAction func LOGINBUTTON(_ sender: UIButton) {
        self.passwordpopup.resignFirstResponder()
        self.emailpopup.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func rememberme(_ sender: UISwitch) {
    }
}

