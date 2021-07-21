//
//  SearchView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50.0, style: .circular)
                .fill(Color(#colorLiteral(red: 0.9492763877, green: 0.4870296121, blue: 0.3417793512, alpha: 1)))
                .frame(minWidth: 0,
                       idealWidth: .infinity,
                       maxWidth: .infinity,
                       minHeight: 0,
                       idealHeight: 100,
                       maxHeight: 100,
                       alignment: .center)
            
            HStack {
                search
                    .padding(.leading, 20)
                ProfileIcon()
                    .frame(minWidth: 0,
                           idealWidth: 40,
                           maxWidth: 50,
                           minHeight: 0,
                           idealHeight: 50,
                           maxHeight: 50,
                           alignment: .center)
                    .padding(.trailing, 15)
            }
        }
    }
    
    @ViewBuilder
    private var search: some View {
        ZStack {
//            Color(#colorLiteral(red: 0.9492763877, green: 0.4870296121, blue: 0.3417793512, alpha: 1)).edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .fill(Color(#colorLiteral(red: 0.9640070796, green: 0.6379872561, blue: 0.5378099084, alpha: 1)) ).opacity(1)
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                Text("Поиск").foregroundColor(.white)
                Spacer()
            }
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 20) )
        }
        .frame(maxHeight: 30)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
