import Foundation
import UIKit


class Reservas: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reuniones.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaReserva", for: indexPath)
        celda.textLabel?.text = reuniones[indexPath.row].nombreSala + ": " + reuniones[indexPath.row].fecha.description
        return celda
    }
    
    @IBOutlet weak var tablaReservas: UITableView!
    @IBOutlet weak var volverButton: UIButton!
    
    override func viewDidLoad() {
            
            super.viewDidLoad()
        tablaReservas.dataSource = self
        tablaReservas.delegate = self

        }
    
    @IBAction func volverPulsado(_ sender: Any)
    {
        self.dismiss(animated: false)
    }
}
