//
//  ChatTabItemView.swift
//  Application
//
//  Created by Эльдар Попов on 20.07.2021.
//

import SwiftUI

struct ChatTabItemView<ViewModel: ChatViewModel>: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        VStack(alignment: .center, spacing: nil, content: {
            SearchView()
            
            List {
                ForEach(viewModel.chatArray) { profile in
                    HStack {
                        profile.photo
                            .frame(minWidth: 0,
                                   idealWidth: 40,
                                   maxWidth: 50,
                                   minHeight: 0,
                                   idealHeight: 50,
                                   maxHeight: 50,
                                   alignment: .center)
                            .padding(.trailing, 10)
                        
                        VStack(alignment: .trailing, spacing: nil) {
                            HStack {
                                Text("\(profile.responsibilities)").font(.body).fontWeight(.semibold)
                                Spacer()
                            }
                                
                            HStack {
                                Text("\(profile.description)").font(.footnote).lineLimit(1)
                                Spacer()
                                if (profile.distance != nil) {
                                Circle().frame(width: 6, height: 6, alignment: .center).foregroundColor(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
                                    Text("\(profile.distance!)").foregroundColor(Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))).font(.footnote)
                                }
                            }
                        }
                    }
                }
            }
            
            Spacer()
        })
    }
}

struct ChatView_Previews: PreviewProvider {
    
    static var previews: some View {
        ChatTabItemView(viewModel: ChatViewModel(chatArray: [
            ChatModel(id: UUID().uuidString,
                      photo: ProfileIcon(),
                      responsibilities: startedStrings.chatResponsibilitiesFirst,
                      description: startedStrings.chatDescriptionFirst,
                      distance: "2 м"),
            ChatModel(id: UUID().uuidString,
                      photo: ProfileIcon(),
                      responsibilities: startedStrings.chatResponsibilitiesSecond,
                      description: startedStrings.chatDescriptionSecond,
                      distance: "30 м"),
            ChatModel(id: UUID().uuidString,
                      photo: ProfileIcon(),
                      responsibilities: startedStrings.chatResponsibilitiesThird,
                      description: startedStrings.chatDescriptionThird,
                      distance: "30 м"),
            ChatModel(id: UUID().uuidString,
                      photo: ProfileIcon(),
                      responsibilities: startedStrings.chatResponsibilitiesFourth,
                      description: startedStrings.chatDescriptionFourth,
                      distance: "30 м"),
            ChatModel(id: UUID().uuidString,
                      photo: ProfileIcon(),
                      responsibilities: startedStrings.chatResponsibilitiesFifth,
                      description: startedStrings.chatDescriptionFifth,
                      distance: "30 м"),
            ChatModel(id: UUID().uuidString,
                      photo: ProfileIcon(),
                      responsibilities: startedStrings.chatResponsibilitiesSixth,
                      description: startedStrings.chatDescriptionSixth,
                      distance: "30 м")
        ]))
    }
}
