//
//  SequenceGesture_Example.swift
//  MyFirstBasicTemplate
//
//  Created by Edgar Adrián on 28/07/22.
//

import SwiftUI

struct SequenceGesture_Example: View {
    
    enum DragState {
        case inactive
        case pressing
        case dragging(translation: CGSize)
        
        var translation: CGSize {
            switch self {
            case .inactive, .pressing:
                return .zero
            case .dragging(let translation):
                return translation
            }
        }
        
        var isActive: Bool {
            switch self {
            case .inactive:
                return false
            case .pressing, .dragging:
                return true
            }
        }
        
        var isDragging: Bool {
            switch self {
            case .inactive, .pressing:
                return false
            case .dragging:
                return true
            }
        }
        
    }//enum DragState
    
    @GestureState private var dragState = DragState.inactive
    @State private var viewState = CGSize.zero
    
    var body: some View {
        let longPressDrag = LongPressGesture(minimumDuration: 1)
            .sequenced(before: DragGesture())
            .updating($dragState) { value, state, transaction in
                switch value {
                case .first(true):
                    state = .pressing
                case .second(true, let dragValue):
                    state = .dragging(translation: dragValue?.translation ?? .zero)
                default:
                    state = .inactive
                }
            }
            .onEnded { value in
                guard case .second(_, let drag?) = value else { return }
                self.viewState.width += drag.translation.width
                self.viewState.height += drag.translation.height
            }
        
        return VStack(spacing: 20) {
            HeaderView(titulo: "Gestos", subtitulo: "Secuencia de gestos", description: "Un ejemplo visto en la documentación de la manzana.")
            
            Text("Dejar pulsado y después arrastrar")
            
            Circle()
                .fill(Color.blue)
                .overlay(dragState.isDragging ? Circle().stroke(Color.orange, lineWidth: 4) : nil)
                .frame(width: 100, height: 100, alignment: .center)
                .offset(
                    x: viewState.width + dragState.translation.width,
                    y: viewState.height + dragState.translation.height
                )
                .animation(.none)
                .shadow(radius: dragState.isActive ? 8 : 0)
                .gesture(longPressDrag)
            
        }
        .font(.title)
        
        
    }
}

struct SequenceGesture_Example_Previews: PreviewProvider {
    static var previews: some View {
        SequenceGesture_Example()
    }
}
