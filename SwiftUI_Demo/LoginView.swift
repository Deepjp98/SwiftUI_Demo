//
//  LoginView.swift
//  SwiftUI_Demo
//
//  Created by iOS Dev2 on 05/08/21.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        VStack {
            Image("Apple")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 75, height: 75, alignment: .center)
                .padding(Edge.Set.bottom, 20)
            
            Text("Login").bold().font(.title)
                
            Text("Enter your details.!").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.subheadline)
                .padding(EdgeInsets(top: 5, leading: 0, bottom: 50, trailing: 0))
                .font(.subheadline)
                
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.white)
                .border(Color.gray)
                .cornerRadius(4.0)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color(.white))
                .border(Color.gray)
                .cornerRadius(4.0)
                .padding(.bottom, 20)
            
            Button {
                print("Login Tapped")
                
                NavigationLink(
                    
                    destination: NextVC(),
                    label: {
                        Text("Login").bold().font(.title )
                    }
                )
                
            } label: {
                Text("Login").bold().font(.title)
                    .foregroundColor(.black)
            }
            .frame(width: 300, height: 25, alignment: .center)
            .padding().background(Color.green).cornerRadius(10)
            .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
            
//            NavigationView{ 
//                NavigationLink(
//                    destination: LoginView()) {
//                    Text("Login")
//                        .font(.title)
//                        .foregroundColor(Color.white)
//                        .frame(width: 300.0, height: 50.0)
//                        .background(Color(UIColor.black))
//                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
//                }
//            }
            navigationBarTitle("Login")
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
