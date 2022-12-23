//
//  NukeView.swift
//  ImageCacheLibraryResearch
//
//  Created by ichikawa on 2022/12/23.
//

import SwiftUI
import NukeUI
import Nuke

struct NukeView: View {
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
          LazyImage(url: .init(string: url))
            .frame(width: CGFloat(itemWidth), height: CGFloat(itemHeight))
          
//          LazyImage(url: .init(string: url))
//            .processors([ImageProcessors.GaussianBlur()])
//            .priority(.high)
//            .pipeline(.shared)
//            .frame(width: CGFloat(itemWidth), height: CGFloat(itemHeight))

//          LazyImage(url: .init(string: url))
//            .onStart { print("Task started \($0)") }
//            .onProgress { print("Task is progress \($0)") }
//            .onSuccess { _ in print("Task successed") }
//            .onFailure { print("Task failed \($0)") }
//            .onCompletion { _ in print("Task completed") }
//            .frame(width: CGFloat(itemWidth), height: CGFloat(itemHeight))
        }
      }
    }
  }
}

struct NukeView_Previews: PreviewProvider {
  static var previews: some View {
    NukeView()
  }
}
