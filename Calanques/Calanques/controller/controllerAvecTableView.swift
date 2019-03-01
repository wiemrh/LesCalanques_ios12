//
//  controllerAvecTableView.swift
//  Calanques
//
//  Created by wiem on 2/28/19.
//  Copyright © 2019 wiem. All rights reserved.
//

import UIKit

class controllerAvecTableView: UIViewController , UITableViewDelegate , UITableViewDataSource{
   
    
    
    var calanques : [Calanque] = []
     var cellId = "Alternative"
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
          calanques = CalanqueCollection().all()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return calanques.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let calanque = calanques[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellId) as? CalanqueCellAlternative {
            cell.calanque = calanque
       
        
        return cell
    }
        return UITableViewCell()
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueID, sender: calanques[indexPath.row])
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID ,  let vc = segue.destination as? DetailController {
            
                vc.calanqueRecue = sender as? Calanque
           
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
