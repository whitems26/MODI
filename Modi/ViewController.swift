//
//  ViewController.swift
//  Modi
//
//  Created by ktds 19 on 2017. 8. 11..
//  Copyright © 2017년 cjon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var boxofficeTableView: UITableView!
    
    var boxOfficeData : [MovieInfo] = []
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        boxofficeTableView.delegate = self
        boxofficeTableView.dataSource = self
        
        self.boxofficeTableView.tableFooterView = UIView()
        
        getBoxOfficeData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boxOfficeData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        if let boxofficeCell = cell as? BoxOfficeCell {
            
            let movie = self.boxOfficeData[indexPath.row]
            boxofficeCell.rankLabel.text = String(movie.rank)
            boxofficeCell.titleLabel.text = movie.title
            boxofficeCell.posterImageView.image = movie.poster
            boxofficeCell.durationLabel.text = String(movie.duration) + "분"
            
            let numFormatter : NumberFormatter = NumberFormatter()
            
            numFormatter.numberStyle = NumberFormatter.Style.decimal
            
            let attendance = movie.attendance
            
//            if let tempP = attendance {
//                if let priceStr = numFormatter.string(from: NSNumber(integerLiteral: tempP)){
                    boxofficeCell.countLabel.text = String(attendance) + "명"

//                }
//            }
            
            boxofficeCell.limitLabel.text = String(movie.ageLimit) + "세 관람가"
            
            return boxofficeCell
        }
        
        return cell
    }
    
    
    // TEMP SET DATA
    func getBoxOfficeData() {
        
        let movie1 = MovieInfo(title: "택시운전사", poster: UIImage(named:"m1")!, ageLimit: 12, duration: 118, rank: 1, attendance: 23142342)
        let movie2 = MovieInfo(title: "청년경찰", poster: UIImage(named:"m2")!, ageLimit: 15, duration: 98, rank: 2, attendance: 12325242)
        let movie3 = MovieInfo(title: "혹성탈출:종의전쟁", poster: UIImage(named:"m3")!, ageLimit: 15, duration: 102, rank: 3, attendance: 9876532)
        let movie4 = MovieInfo(title: "장산범", poster: UIImage(named:"m4")!, ageLimit: 19, duration: 78, rank: 4, attendance: 6238284)
        let movie5 = MovieInfo(title: "슈퍼배드3", poster: UIImage(named:"m5")!, ageLimit: 5, duration: 122, rank: 5, attendance: 237823)
        
        
        boxOfficeData.append(movie1)
        boxOfficeData.append(movie2)
        boxOfficeData.append(movie3)
        boxOfficeData.append(movie4)
        boxOfficeData.append(movie5)
        
        
    }
}


class BoxOfficeCell: UITableViewCell {
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var limitLabel: UILabel!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
}
