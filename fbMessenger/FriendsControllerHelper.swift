//
//  FriendsControllerHelper.swift
//  fbMessenger
//
//  Created by Epi Ft on 01/06/2018.
//  Copyright © 2018 Epi Ft. All rights reserved.
//

import UIKit

import CoreData

extension FriendsController {
    
    func setupData() {
        
        let delegate = UIApplication.shared.delegate as? AppDelegate
        
        if let context = delegate?.persistentContainer.viewContext {
            
            let mark = NSEntityDescription.insertNewObjectForEntityForName("Friend", inManagedObjectContext: context) as! Friend
            
            mark.name = "Kikou Ibe"
            mark.profileImageName = "kikuoibe"
            
            let message = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: context) as! Message
            
            message.friend = mark
            message.text = "Hello my name is Ibe. Nice to meet you..."
            message.date = NSDate()
            
            let steve = NSEntityDescription.insertNewObjectForEntityForName("Friend", inManagedObjectContext: context) as! Friend
            steve.name = "Amirul Fikry"
            steve.profileImageName = "IMG_1626"
            
            let messageSteve = NSEntityDescription.insertNewObjectForEntityForName("Message", inManagedObjectContext: context) as! Message

            messageSteve.friend = steve
            messageSteve.text = "How was our GG Shop website going?..."
            messageSteve.date = NSDate()
            
            messages = [message, messageSteve]
            
        }
    }
}
