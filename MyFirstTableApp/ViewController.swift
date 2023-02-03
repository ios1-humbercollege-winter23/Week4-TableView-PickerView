//
//  ViewController.swift
//  MyFirstTableApp
//
//  Created by Rania Arbash on 2023-02-03.
//

import UIKit

class ViewController: UIViewController ,
                        UITableViewDataSource ,
                        UITableViewDelegate {
    @IBOutlet weak var numberText: UITextField!
    
    @IBOutlet weak var MyTable2: UITableView!
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var nameText: UITextField!
    var names = [String]()
    var numbers = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        
        // Do any additional setup after loading the view.
    }

    func numberOfSections(in tableView: UITableView) -> Int // Default is 1 if not implemented
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableView.tag == 1 ? names.count : numbers.count
        
//        if tableView.tag == 1{
//            return names.count
//        }
//        else if tableView.tag == 2 {
//            return numbers.count
//        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // var cell = UITableViewCell()
        var cell : UITableViewCell?
        if tableView.tag == 1{
            cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = names[indexPath.row]
            
        }
        else {
            cell = tableView.dequeueReusableCell(withIdentifier: "cell2")
            cell?.textLabel?.text = numbers[indexPath.row]
            
        }
        
        return cell!
    }
    
    @IBAction func insertClicked(_ sender: Any) {
        
        if let name = nameText.text {
           if  let number = numberText.text {
            if name.count > 0 &&  number.count > 0  {
               
                
                names.append(name)
                myTable.reloadData()
                nameText.text = ""
                
                numbers.append(number)
                MyTable2.reloadData()
                numberText.text = ""
                
                
            }
            }
        }
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        if tableView.tag == 1{
            print(names[indexPath.row])
            
        }else {
            print(numbers[indexPath.row])
        }
    }

}

