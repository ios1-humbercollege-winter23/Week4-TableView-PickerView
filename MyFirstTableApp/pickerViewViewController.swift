//
//  pickerViewViewController.swift
//  MyFirstTableApp
//
//  Created by Rania Arbash on 2023-02-03.
//

import UIKit

class pickerViewViewController: UIViewController ,
                                UIPickerViewDataSource ,
                                UIPickerViewDelegate {


    var days = ["Sat", "Sun","Mon"]
    var months = ["Jan", "Feb", "March","April"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return days.count
        }else if component == 1 {
            return months.count
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return days[row]
        }else if component == 1 {
            return months[row]
        }
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
                    print(days[row])
        }else if component == 1
        {
            print(months[row])
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
