//
//  DraggableView.swift
//  SwiftUIGesturesExample
//
//  Created by Edgar Adrián on 09/08/22.
//

import SwiftUI

struct DraggableView<Content>: View where Content: View {
    
    @GestureState private var dragState = DragState.inactive
    @State private var position = CGSize.zero
    
    var content: () -> Content
    
    var body: some View {
        content()
            .opacity(dragState.isPressing ? 0.3 : 1.0)
            .offset(x: position.width + dragState.translation.width, y: position.height + dragState.translation.height)
            .animation(.easeInOut, value: dragState.translation)
            .gesture(
                
                LongPressGesture(minimumDuration: 1.0)
                    .sequenced(before: DragGesture())
                    .updating($dragState, body: { value, state, transaction in
                        
                        switch value {
                        case .first(true):
                            state = .pressing
                        case .second(true, let drag):
                            state = .dragging(translation: drag?.translation ?? .zero)
                        default:
                            break
                        }
                        
                    })
                    .onEnded({ value in
                        guard case .second(true, let drag?) = value else {
                            return
                        }
                        
                        self.position.height += drag.translation.height
                        self.position.width += drag.translation.width
                        
                     })
                
            )
    }
    
}//DraggableView

struct DraggableView_Previews: PreviewProvider {
    static var previews: some View {
        DraggableView() {
            Image(systemName: "star.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(.yellow)
        }
    }
}
