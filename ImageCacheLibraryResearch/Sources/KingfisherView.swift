//
//  KingfisherView.swift
//  ImageCacheLibraryResearch
//
//  Created by ichikawa on 2022/12/23.
//

import Kingfisher
import SwiftUI

struct KingfisherView: View {
  
  let itemWidth: Int
  let itemHeight: Int
  
  init() {
    let width = Int(UIScreen.main.bounds.width / 3)
    print(width)
    self.itemWidth = width
    self.itemHeight = width * 2
  }
  
  var body: some View {
    ScrollView {
      LazyVGrid(columns: [GridItem(.adaptive(minimum: 100, maximum: 200))]) {
        ForEach((1...50), id: \.self) { index in
          let url = "https://picsum.photos/id/\(index)/\(String(itemWidth))/\(String(itemHeight))"
          KFImage(.init(string: url))
            .frame(width: CGFloat(itemWidth), height: CGFloat(itemHeight))
        }
      }
    }
  }
}

struct KingfisherView_Previews: PreviewProvider {
    static var previews: some View {
        KingfisherView()
    }
}
