//
//  ContentView.swift
//  SwiftUI_Demo
//
//  Created by iOS Dev2 on 03/08/21.
//

import SwiftUI

struct ContentView: View {
    
//    let contentView = LoginView()
    
    var body: some View {
        
        NavigationView{
            VStack {
                NavigationLink(
                    destination: NextVC()) {
                    Text("Next")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 300.0, height: 50.0)
                        .background(Color(UIColor.black))
                    
                }
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
