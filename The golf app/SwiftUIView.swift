//
//  SwiftUIView.swift
//  The golf app
//
//  Created by Rahul A. Basu on 5/24/23.
//

import SwiftUI

struct HomePageView: View {
    var body: some View {
        VStack {
            NavigationStack{
            Text("Welcome to Swing Fixer")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            Image("Golf-Course")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 50)
            
            
                NavigationLink(destination: GolfButtonLayout()) {
                    Text("Start Fixing!!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .clipShape(Rectangle())
                        .frame(width: 200, height: 100)
                        .cornerRadius(15)
                    
                    
                }
            }
            
        }
    }
}
