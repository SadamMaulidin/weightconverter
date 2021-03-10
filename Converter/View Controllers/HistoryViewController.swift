import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var historyTextView: UITextView!
    
    var history: [String] = []
    var titleString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = titleString
        
        if history.count == 0 {
            historyTextView.text = "You have no stored record."
        } else {
            var records = ""
            for element in history {
                records.append(element + "\n\n")
            }
            
            historyTextView.text = records
        }
        historyTextView.isEditable = false
    }

}
