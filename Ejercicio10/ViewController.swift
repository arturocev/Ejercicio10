import UIKit

var reuniones = [Reuniones()]

class ViewController: UIViewController {

   
    @IBOutlet weak var nombrePersonaUI: UITextField!
    @IBOutlet weak var nombreSalaUI: UITextField!
    @IBOutlet weak var numeroPersonasUI: UITextField!
    @IBOutlet weak var fechaReservaUI: UIDatePicker!
    @IBOutlet weak var aniadirReservaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reuniones.remove(at: 0)
        inicio()
    }

    @IBAction func aniadirReservaPulsado(_ sender: Any)
    {
        aniadirReunion()

    }
    
    func aniadirReunion()
    {
        let reunion = Reuniones()
        
        reunion.nombrePersona = nombrePersonaUI.text!
        reunion.nombreSala = nombreSalaUI.text!
        reunion.numeroPersonas = numeroPersonasUI.text!
        reunion.fecha = fechaReservaUI.date
        
        let comprobarDatos = reunion.comprobarReserva()
        
        if comprobarDatos == false {
            sleep(3)
            inicio()
        }
        else
        {
            if reunion.nombrePersona != "" {
                reuniones.insert(reunion, at: 0)
            }
            inicio()
            performSegue(withIdentifier: "listaReservas", sender: nil)
            
        }
    }
    
    func inicio() {
        
        nombrePersonaUI.text = ""
        nombreSalaUI.text = ""
        numeroPersonasUI.text = ""
        aniadirReservaButton.setTitle("AÑADIR RESERVA", for: .normal)
    }
}

