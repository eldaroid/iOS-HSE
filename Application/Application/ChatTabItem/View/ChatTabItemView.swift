//
//  ChatTabItemView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

//struct ChatTabItemView<ViewModel: ProfileViewModel>: View {
//    @ObservedObject var viewModel: ViewModel
struct ChatTabItemView: View {

    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            SearchView()
            
            List {
//                ForEach(viewModel)
            }
            
            Spacer()
        })
    }
}

//struct ChatView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChatView()
//    }
//}
