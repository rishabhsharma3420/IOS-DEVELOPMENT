
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let sliderValue=lroundf(sender.value)
        label.text="\(sliderValue)"
    }

    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex==0){
            label.text="Login"
        }else{
            label.text="SignIn"
        }
    }

}
