//
//  HostingController.swift
//  Toggl for Watch WatchKit Extension
//
//  Created by Lonnie Gerol on 5/23/20.
//  Copyright © 2020 Lontronix. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<ContentView> {
    override var body: ContentView {
        return ContentView()
    }
}

struct HostingController_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
