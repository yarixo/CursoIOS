//
//  TableViewController ElAzteca.swift
//  ElAzteca
//
//  Created by Laboratorio11 UNAM-Apple11 on 27/02/23.
//

import UIKit

struct Tatuadores {
    var foto:UIImage
    var nombre:String
    var ubicacion:String
    var contacto:String
}

class TableViewController_ElAzteca: UITableViewController {
    var arregloTatuadores: [Tatuadores]=[
    Tatuadores(foto: UIImage(named: "tatuador1")!, nombre: "Enrique", ubicacion: "CDMX", contacto: "@quiqueseg"),
    Tatuadores(foto: UIImage(named: "image")!, nombre: "Jennifer", ubicacion: "CDMX", contacto: "@alberstein_jenn")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arregloTatuadores.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath) as! TableViewCell_ElAzteca
        let celdaReciclada=arregloTatuadores[indexPath.row]
        
        cell.imgTatuador.image=celdaReciclada.foto
        cell.lblNombre.text=celdaReciclada.nombre
        cell.lblUbicacion.text=celdaReciclada.ubicacion
        cell.lblContacto.text=celdaReciclada.contacto
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
