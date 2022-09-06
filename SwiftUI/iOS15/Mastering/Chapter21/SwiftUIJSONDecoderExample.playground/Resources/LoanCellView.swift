import SwiftUI

struct LoanCellView: View {
    
    var loan: Prestamo
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text(loan.nombre)
                    .font(.system(.headline, design: .rounded))
                    .bold()
                
                Text(loan.pais)
                    .font(.system(.subheadline, design: .rounded))
                
                Text(loan.uso)
                    .font(.system(.body, design: .rounded))
            }
            
            Spacer()
            
            VStack {
                Text("$\(loan.cantidad)")
                    .font(.system(.title, design: .rounded))
                    .bold()
            }
        }
        .frame(width: 0, height: .infinity, alignment: .center)
    }
    
}

struct LoanCellViewPreview: PreviewProvider {
    static var previews: some View {
        LoanCellView(loan: Prestamo(nombre: "Edgar", pais: "México", uso: "Learning", cantidad: "1555"))
            .previewLayout(.sizeThatFits)
    }
}
