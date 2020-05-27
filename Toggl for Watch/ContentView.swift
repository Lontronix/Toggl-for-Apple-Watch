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
            GeometryReader{ geo in
                VStack{
                    VStack{
                        Text("Welcome")
                            .font(.system(size: 50, design: Font.Design.rounded))
                            .foregroundColor(Color.red)
                        Text("Please Log in with your Toggl account")
                            .font(.callout)
                    }
                Spacer()

                VStack(alignment: .leading){
                    Text("Email Address")
                        .font(.headline)
                        .foregroundColor(Color.red)
                    TextField("email address", text: self.$emailAddress)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: geo.size.width * 0.75, height: 44, alignment: .center)
                    Text("Password")
                        .font(.headline)
                        .foregroundColor(Color.red)
                    TextField("password", text: self.$password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: geo.size.width * 0.75, height: 44, alignment: .center)
                }
                    .offset(x: 0, y: -72 )

                Spacer()

                VStack {

                    Button(action: {
                        print("ligma")
                    }) {
                        Text("Sign in")
                            .foregroundColor(.white)
                            .frame(width: geo.size.width * 0.85, height: 56, alignment: .center)
                            .background(Color.red)
                            .cornerRadius(8.0)
                    }
                .offset(x: 0, y: -20)

                }
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
