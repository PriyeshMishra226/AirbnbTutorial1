//
//  ListingDetailView.swift
//  AirbnbTutorial1
//
//  Created by Priyesh Mishra on 10/08/25.
//

import SwiftUI

struct ListingDetailView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    var body: some View {
        ScrollView{
            
            ListingimageCarouselView()
                .frame(height: 320)
               
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                
                    .font(. title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text("-")
                        Text("28 Reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    Text("Miami , florida")
                }
                .font(.caption)
      
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
    }
}

#Preview {
    ListingDetailView()
}
