
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
     
    @IBAction func kaam(_ sender: UIButton) {
      let title = sender.title(for: .normal)!
        
        label.text="You clicked the \(title) button"
    }
}

