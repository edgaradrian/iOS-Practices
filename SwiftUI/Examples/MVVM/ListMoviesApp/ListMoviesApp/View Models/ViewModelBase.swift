//
//  ViewModelBase.swift
//  ListMoviesApp
//
//  Created by Edgar Adrián on 07/12/20.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}//LoadingState

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}//ViewModel
