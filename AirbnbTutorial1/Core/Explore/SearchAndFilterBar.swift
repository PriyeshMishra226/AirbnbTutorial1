//
//  SearchAndFilterBar.swift
//  AirbnbTutorial1
//
//  Created by Priyesh Mishra on 05/08/25.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack (alignment: .leading,spacing: 2){
                Text("Where to")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Add guest")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Button(action: {},label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundColor(Color(.systemGray6))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        
    }
}

#Preview {
    SearchAndFilterBar()
}
