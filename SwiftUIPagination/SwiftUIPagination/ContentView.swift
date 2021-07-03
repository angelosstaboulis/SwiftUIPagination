//
//  ContentView.swift
//  SwiftUIPagination
//
//  Created by Angelos Staboulis on 3/7/21.
//

import SwiftUI
struct PaginationArray:Identifiable{
    var id = UUID()
    var number:Int
}
struct ContentView: View {
    @State var row:Int!=0
   @State var itemsArray=[PaginationArray(number:1),PaginationArray(number:2),PaginationArray(number:3),PaginationArray(number:4),PaginationArray(number:5),PaginationArray(number:6),PaginationArray(number:7),PaginationArray(number:8),PaginationArray(number:9),PaginationArray(number:10),PaginationArray(number:11),PaginationArray(number:12),PaginationArray(number:13),PaginationArray(number:14),PaginationArray(number:15),PaginationArray(number:16),PaginationArray(number:17),PaginationArray(number:18),PaginationArray(number:19),PaginationArray(number:20)]
    var body: some View {
        VStack{
            HStack{
                Text("SwitUI Pagination")
            }.padding(20)
            List(itemsArray){ number in
                Text(String(number.number)).onAppear(perform: {
                    if  number.number == itemsArray[itemsArray.count-1].number{
                            loadMore()
                    }
                })
            }
        }
    }
    func loadMore(){
        row = itemsArray[itemsArray.count-1].number
        for item in 0..<20{
            itemsArray.append(PaginationArray(number: row + (item+1)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
