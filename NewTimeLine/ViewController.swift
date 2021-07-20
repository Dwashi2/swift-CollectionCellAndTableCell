//
//  ViewController.swift
//  NewTimeLine
//
//  Created by Daniel Washington Ignacio on 19/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    private var arrayCharacters: [Character] = []
    
    @IBOutlet weak var timeLineTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.arrayCharacters = [Character(name: "Mario", comportamento: "", imageName: "marioC", imagaNameBackbround: "mario"),Character(name: "Luigi", comportamento: "", imageName: "luigiC", imagaNameBackbround: "luigi"),Character(name: "Yoshi", comportamento: "", imageName: "yoshiC", imagaNameBackbround: "yoshi"),Character(name: "Toad", comportamento: "", imageName: "toadC", imagaNameBackbround: "toad"),Character(name: "Peach", comportamento: "", imageName: "peachC", imagaNameBackbround: "peach"),Character(name: "Browser", comportamento: "", imageName: "broC", imagaNameBackbround: "brow"),Character(name: "Birdo", comportamento: "", imageName: "birdoC", imagaNameBackbround: "birdo"),]
        
        
        self.timeLineTableView.register(UINib(nibName: "HorizontalTableViewCell", bundle: nil), forCellReuseIdentifier: "HorizontalTableViewCell")
        
        self.timeLineTableView.register(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: "CardTableViewCell")
        
        self.timeLineTableView.dataSource = self
        self.timeLineTableView.delegate = self
    }


}


//MARK: -UITableViewDelegate, UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if section == 0 {
            return 1
        }
        return self.arrayCharacters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.section == 0 {
            let cell: HorizontalTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "HorizontalTableViewCell", for: indexPath) as? HorizontalTableViewCell
            
            
            cell?.setup(value: arrayCharacters)
            
            return cell ?? UITableViewCell()
            
        }
        else{
            
            let cell: CardTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as? CardTableViewCell
            
            cell?.setup(value: self.arrayCharacters[indexPath.row])
            
            return cell ?? UITableViewCell()
            
        }
        
      
    }
    
    
}
