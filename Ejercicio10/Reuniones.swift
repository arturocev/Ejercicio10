import Foundation


class Reuniones
{
    var nombreSala = ""
    var nombrePersona = ""
    var numeroPersonas = ""
    var fecha = Date()
    var reservaValida = false
    
    
    init(){}
    
    func comprobarReserva() -> Bool
    {
        if nombreSala.isEmpty || nombrePersona.isEmpty || numeroPersonas.isEmpty {
            reservaValida = false
        }
        else if nombrePersona.first!.isNumber || nombreSala.first!.isNumber
        {
            reservaValida = false
        }
        else if !(numeroPersonas.first!.isNumber)
        {
            reservaValida = false
        }
        else
        {
            let numeroPersonasReserva: Int = Int(numeroPersonas)!
            if numeroPersonasReserva < 2
            {
                reservaValida = false
            }
            else
            {
                reservaValida = true
            }
        }
        return reservaValida
    }
}
