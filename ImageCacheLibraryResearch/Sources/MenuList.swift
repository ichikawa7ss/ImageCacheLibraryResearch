//
//  MenuList.swift
//  ImageCacheLibraryResearch
//
//  Created by ichikawa on 2022/12/23.
//

import SwiftUI

struct MenuList: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    AsyncImageView()
                } label: {
                    Text("Use AsyncImage(SwiftUI official API)")
                }

                NavigationLink {
                    NukeView()
                } label: {
                    Text("Use Nuke package")
                }


                NavigationLink {
                    SDWebImageView()
                } label: {
                    Text("Use SDWebImage package")
                }

                NavigationLink {
                    KingfisherView()
                } label: {
                    Text("Use Kingfisher package")
                }
            }
        }
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList()
    }
}
