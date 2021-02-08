import UIKit

public class SettingsView: UIViewController {

	@IBOutlet var tableView: UITableView!

	@IBOutlet var cellUser: UITableViewCell!
	@IBOutlet var cellNotifications: UITableViewCell!
	@IBOutlet var cellInviteFriends: UITableViewCell!
	@IBOutlet var cellTouchID: UITableViewCell!
	@IBOutlet var cellFAQ: UITableViewCell!
	@IBOutlet var cellFeedack: UITableViewCell!

	@IBOutlet var imageViewUser: UIImageView!
	@IBOutlet var labelName: UILabel!
	@IBOutlet var labelEmail: UILabel!
	@IBOutlet var switchTouchID: UISwitch!
    
    var router: SettingsRouter!

    public override func viewDidLoad() {

		super.viewDidLoad()
		title = "Settings"
		loadData()
	}
    
	func loadData() {
		labelName.text = "Angel Vasa"
		labelEmail.text = "avasa@mobiquityinc.com"
		switchTouchID.setOn(true, animated: true)
	}
}


extension SettingsView: UITableViewDataSource {
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 7
	}

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if (indexPath.row == 0) { return cellUser }
		if (indexPath.row == 1) { return cellNotifications }
		if (indexPath.row == 2) { return cellInviteFriends }
		if (indexPath.row == 3) { return cellTouchID }
		if (indexPath.row == 4) { return cellFAQ }
		if (indexPath.row == 5) { return cellFeedack }
		return UITableViewCell()
	}
}

extension SettingsView: UITableViewDelegate {
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		if (indexPath.row == 0) { return 95 }
		return 55
	}

    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print(#function)
		tableView.deselectRow(at: indexPath, animated: true)
        router.resove(forEvent: .notificationAction)
	}
}
