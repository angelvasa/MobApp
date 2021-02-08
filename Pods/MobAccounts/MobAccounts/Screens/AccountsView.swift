import UIKit

public class AccountsView: UIViewController {

	@IBOutlet var tableView: UITableView!
    
	@IBOutlet var cellAccount1: UITableViewCell!
	@IBOutlet var cellAccount2: UITableViewCell!
	@IBOutlet var cellAccount3: UITableViewCell!
    
    var router: AccountsRouter!

    public override func viewDidLoad() {

		super.viewDidLoad()
		title = "Accounts"
	}
}


extension AccountsView: UITableViewDataSource {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if (indexPath.row == 0) { return cellAccount1 }
		if (indexPath.row == 1) { return cellAccount2 }
		if (indexPath.row == 2) { return cellAccount3 }
		return UITableViewCell()
	}
}

extension AccountsView: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 80
	}

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
        router.resove(forEvent: .accountTapped("1234567"))
	}
}
