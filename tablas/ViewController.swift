//
//  ViewController.swift
//  tablas
//
//  Created by masteraaa on 17/5/17.
//  Copyright © 2017 masteraaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tabla: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda=tabla.dequeueReusableCell(withIdentifier: "celda")
        celda?.textLabel?.text="Hola que tal?"
        return celda!
        
    }


}

