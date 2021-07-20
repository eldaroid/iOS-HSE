//
//  ProfileTabItemView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

struct ProfileTabItemView<ViewModel: ProfileViewModel>: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            HStack {
                ProfileIcon()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 10))
                
                VStack {
                    HStack {
                        Text("Имя Фамилия").font(.title).fontWeight(.semibold)
                        Spacer()
                    }
                       
                    HStack {
                        Button(action: {}) {
                            HStack {
                                Text("Мои данные")
                                    .font(.caption)
                                Image(systemName: "chevron.forward")
                                    .offset(x: -5)
                            }
                        }
                        Spacer()
                    }
                }
                .padding(.bottom, 18)
                .foregroundColor(.white)
                
                Spacer()
            }
            .frame(maxHeight: 180)
            .background(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
            .cornerRadius(20)
            .padding([.leading, .trailing,], 10)
                
            List {
                ForEach(viewModel.profileEventArray) { profileEvent in
                    VStack {
                        HStack {
                            Text("\(profileEvent.title)")
                                .font(.title3)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        
                        HStack {
                            Text("\(profileEvent.responsibilities)")
                                .foregroundColor(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
                                .padding(EdgeInsets(top: 7, leading: 0, bottom: 3, trailing: 0) )
                            Spacer()
                        }
                            
                        HStack {
                            Text("\(profileEvent.description)").font(.footnote)
                            Spacer()
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        ProfileTabItemView(viewModel: ProfileViewModel(profileEventArray: [
//            profileEvent(
//                id: UUID().uuidString,
//                title: startedStrings.profileTitleFirst,
//                responsibilities: startedStrings.profileResponsibilities,
//                description: startedStrings.profileDescription),
//            profileEvent(
//                id: UUID().uuidString,
//                title: startedStrings.profileTitleSecond,
//                responsibilities: startedStrings.profileResponsibilities,
//                description: startedStrings.profileDescription)
//            ]))
//    }
//}
