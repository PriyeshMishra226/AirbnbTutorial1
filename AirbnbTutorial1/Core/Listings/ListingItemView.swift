//
//  ListingItemView.swift
//  AirbnbTutorial1
//
//  Created by Priyesh Mishra on 03/06/25.
//

import SwiftUI

struct ListingItemView: View {
    

    

    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            //image
            
            ListingimageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
//            TabView {
//                ForEach(images, id: \.self) { image in
//                    Image(image)
//                    .resizable()
//                    .scaledToFill()
//                    
//                    
//                }
//            }
//            .frame(height: 320)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//            .tabViewStyle(.page)
            
            //listing details
            HStack {
                //details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 miles away")
                        .foregroundStyle(.gray)
                    Text("nov 3 - 10 nov")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                    
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        }
        
    }
        

#Preview {
    ListingItemView()
}
