import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var numbers: [[Int]] = []
    var holder : [Int] = []
    var weeks : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Lottery()
    }

func Lottery(){
    for i in 0...51{
        weeks.append("its week \(i + 1)")
    for _ in 0...4{
        let ran = Int.random(in: 1...70)
        holder.append(ran)
            }
        numbers.append(holder)
        for _ in 0...4{
        holder.remove(at: 0)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weeks.count
    }
    //my mine is on fire
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDCell")!
        let text = weeks[indexPath.row]
        cell.textLabel?.text = "\(text)"
        let detailText = numbers[indexPath.row]
        cell.detailTextLabel?.text = "\(detailText)"
        return cell
    }
}
