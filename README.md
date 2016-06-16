# TableTest

Reloading a table row while the section height is set to `UITableViewAutomaticDimension` causes the app to crash.

~~~~
class ViewController: UITableViewController {

  override func viewDidLoad() {
    tableView.estimatedSectionHeaderHeight = 44
    tableView.sectionHeaderHeight = UITableViewAutomaticDimension
  }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
  }
}
~~~~
