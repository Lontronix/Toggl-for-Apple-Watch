//
//  ContentView.swift
//  Toggl for Watch
//
//  Created by Lonnie Gerol on 5/23/20.
//  Copyright © 2020 Lontronix. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack{
            Text("Welcome")
                .font(.title)
            Text("Please Log in with your Toggl account")
                .font(.body)

            Spacer()

                VStack(alignment: .leading){
                        Text("Email Address")
                        TextField("email address", text: self.$emailAddress)
                            .frame(width: nil, height: 44, alignment: .center)
                        Text("Password")
                        TextField("password", text: self.$password)
                            .frame(width: nil, height: 44, alignment: .center)
                }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            Spacer()
            VStack{
                Button(action: {
                    print("ligma")
                }) {
                    Text("Sign in")
                        .foregroundColor(.white)
                        .frame(width: nil, height: 44, alignment: .center)
                        .background(Color.red)
                        .offset(x: 0, y: -10)

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .previewDevice(PreviewDevice(stringLiteral: "iPhone SE"))
                .previewDisplayName("iPhone SE")
            ContentView()
                .previewDevice(PreviewDevice(stringLiteral: "iPhone 11"))
                .previewDisplayName("iPhone 11")
            ContentView()
                .previewDevice(PreviewDevice(stringLiteral: "iPhone 11 Pro Max"))
                .previewDisplayName("iPhone 11 Pro Max")
        }
    }
}
