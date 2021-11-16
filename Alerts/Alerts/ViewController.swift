//
//  ViewController.swift
//  Alerts
//
//  Created by chris vombaur on 11/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        presentMyAlert()
    }
        
    func presentMyAlert() {
        let myAlert = UIAlertController(title: "Delete Note", message: "Deletion can not be undone", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("cancel option slected by user")
            }
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { _ in
            print("User selected delete option")
        }
            
        let archiveAction = UIAlertAction(title: "Archive", style: .default) { _ in
            print("User selected the archive option")
        }
        
//        myAlert.addAction(cancel)
//        myAlert.addAction(deleteAction)
        [cancel,deleteAction, archiveAction].forEach{myAlert.addAction($0)}
        
        present(myAlert, animated: true, completion: nil)
    }
}

