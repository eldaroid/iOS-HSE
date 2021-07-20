//
//  ConfigurationTabItemView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

struct ConfigurationTabItemView: View {
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            SearchView()
            
            Spacer()
            
            Text("ChatTabItemView")
            
            Spacer()
        })
    }
}

struct ConfigurationTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigurationTabItemView()
    }
}
