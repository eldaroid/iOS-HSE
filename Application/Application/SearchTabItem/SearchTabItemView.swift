//
//  SearchTabItemView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

struct SearchTabItemView: View {
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            SearchView()
            
            Spacer()
            
            Text("SearchTabItemView")
            
            Spacer()
        })
    }
}

struct SearchTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabItemView()
    }
}
