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
    
    // propiedad llamada contador
    var contador:Int=0
    var section:Int=0
    var dias:[String]=["lunes","martes","miércoles","jueves","viernes"]
    var meses:[String]=["Enero","Febrero","Marzo","Abril","Mayo"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    /////// cuando recibimos un warning de memoria///////
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    ////////Metodos para table view /////////////
    func numberOfSections(in tableView: UITableView) -> Int {
        return meses.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return dias.count
            
        }else{
            return dias.count
        }
        
    }

    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
            return meses[section]
        
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        contador=indexPath.row
        section=indexPath.section
        let celda=tabla.dequeueReusableCell(withIdentifier: "celda")
        
        
            celda?.textLabel?.text=dias[contador]
            return celda!
        
        
        
    }
    
    
}

