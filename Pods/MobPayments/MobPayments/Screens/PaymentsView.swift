import UIKit

public class PaymentsView: UIViewController {

	@IBOutlet var tableView: UITableView!
    
	@IBOutlet var cellBetweenAccounts: UITableViewCell!
	@IBOutlet var cellNationalTransfer: UITableViewCell!
	@IBOutlet var cellInternationalTransfer: UITableViewCell!
    
    var router: PaymentsRouter!

    public override func viewDidLoad() {

		super.viewDidLoad()
		title = "Payments"
	}
}


extension PaymentsView: UITableViewDataSource {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if (indexPath.row == 0) { return cellBetweenAccounts }
		if (indexPath.row == 1) { return cellNationalTransfer }
		if (indexPath.row == 2) { return cellInternationalTransfer }
		return UITableViewCell()
	}
}

extension PaymentsView: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 55
	}

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print(#function)
		tableView.deselectRow(at: indexPath, animated: true)
        router.resove(forEvent: .nationalTransferTapped)
	}
}
