//
//  AlertView.swift
//  SwiftUI_Demo
//
//  Created by iOS Dev2 on 09/08/21.
//

import SwiftUI

struct AlertView: View {
    
    @State private var alertIsPresented = false
    
    var body: some View {
        
        NavigationView {
            VStack {
                Button(action: {
                    self.alertIsPresented = true
                }, label: {
                    Text("Tap Me!")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size: 25))
                })
                .frame(width: 200, height: 50, alignment: .center)
                .padding()
                .background(Color.green)
                .cornerRadius(10)
                .alert(isPresented: $alertIsPresented, content: {
                    Alert(title: Text("Done"), message: Text("Your payment is successfuly completed!"), dismissButton: .default(Text("Goi It!")))
                })
            }
            .navigationTitle("Alert Demo")
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
