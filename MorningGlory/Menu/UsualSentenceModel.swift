//
//  UsualSentenceModel.swift
//  UsualTask
//
//  Created by 张原溥 on 2021/10/20.
//

import SwiftUI
import CoreData

class UsualSentenceModel:ObservableObject{
    @Published var content = ""
    @Published var isNewData = false
    @Published var updateItem :Task!
    
    func writeData(context : NSManagedObjectContext){
        if updateItem != nil{
            updateItem.content = content
            try! context.save()
            
            updateItem = nil
            isNewData.toggle()
            content = ""
            return
        }
         
        let newText = Task(context: context)
        newText.content = content
        do{
            try context.save()
            isNewData.toggle()
            content = ""
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
    func EditItem(item: Task){
        updateItem = item
        content = item.content!
        isNewData.toggle()
    }
}
