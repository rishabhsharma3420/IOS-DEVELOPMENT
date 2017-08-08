
import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    let artists=[
        ("BRUNO MARS","ENGLISH"),
        ("ARIJIT SINGH","HINDI"),
        ("DILJIT DOSANJH","PUNJABI"),
        ("LOUIS FONSI","SPANISH")
    ]
    
    let SONGS=[
        ("BRUNO MARS","3 SONGS"),
        ("ARIJIT SINGH","2 SONGS"),
        ("DILJIT DOSANJH","5 SONGS"),
        ("LOUIS FONSI","1 SONG")
    ]
    
    // number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section==0{
            return artists.count
        }else{
            return SONGS.count
        }
    }
    
    // contents of each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        if indexPath.section==0 {
            var(artistname, language)=artists[indexPath.row]
            cell .textLabel?.text=artistname
        }else{
            var(title, songs)=SONGS[indexPath.row]
            cell .textLabel?.text=songs
        }
        return cell
    }
    
    // naming each section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section==0{
            return "ARTISTS"
        }else{
            return "NO Of SONGS"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

