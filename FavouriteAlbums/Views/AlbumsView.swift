//
//  AlbumsView.swift
//  FavouriteAlbums
//
//  Created by Justin Hui on 2/11/2023.
//

import SwiftUI

struct AlbumsView: View {
    
    //MARK: Stored Properties
    @State var albumName = ""
    @State var artistName = ""
    @State var albumImageLink = ""
    @State var rating = 3
    
    //MARK: Computed Properties
    var body: some View {
        
            HStack{
                
                VStack{
                    
                    TextField("Enter Album Name", text: $albumName)
                        .textFieldStyle(.roundedBorder)

                    TextField("Enter Artist Name", text: $artistName)
                        .textFieldStyle(.roundedBorder)

                    TextField("Enter Album Image Link", text: $albumImageLink)
                        .textFieldStyle(.roundedBorder)
                    
                    Picker("", selection: $rating){
                        Text("★").tag(1)
                        Text("★★").tag(2)
                        Text("★★★").tag(3)
                        Text("★★★★").tag(4)
                        Text("★★★★★").tag(5)
                    }
                    .pickerStyle(.segmented)
                    
                }
                .padding()
                
                List {
                    Text("Item 1")
                    Text("Item 2")
                    Text("Item 3")
                }
                
            }
    }
}

#Preview {
    AlbumsView()
}
