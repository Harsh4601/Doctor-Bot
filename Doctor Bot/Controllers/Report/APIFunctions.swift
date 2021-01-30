//
//  APIFunctions.swift
//  Doctor Bot
//
//  Created by Gokul Nair on 30/01/21.
//

import Foundation
import Alamofire

struct Report: Decodable{
    var _id: String
    var date: String
    var name:String
    var issue:String
    var blood:String
    var weight:Int
    var height:Int
    var heartDiseases: String
}

class APIFunctions{
    var delegate:DataDelegate?
    // creates and instance of the file so that other files can interact with it
    
    static let functions = APIFunctions()
    
    //MARK:- NOTES FETCHING FUNCTION
    
    func fetchNotes(){
        
        //Enter your local host URL
        AF.request("http://192.168.1.88081/fetch").response{ response in
            
            //print(response.data)
            
            let data = String(data: response.data!, encoding: .utf8)
            
            self.delegate?.updateArray(newArray: data!)
            
            
        }
    }
    
    //MARK:- ADD NOTES FUNCTION
    
    func addNote(date: String, name: String, issue: String){
        
        //Enter your local host URL
        AF.request("http://192.168.1.8:8081/create", method: .post, encoding:  URLEncoding.httpBody, headers: ["name": name, "date": date, "issue": issue]).responseJSON{response in
            print(response)
            
        }
        
    }
    
    //MARK:- UPDATE NOTES FUNCTION
    
    func updateNote(date: String, name: String, issue: String, id: String){
        
        //Enter your local host URL
        AF.request("http://1192.168.1.8:8081/update",method: .post, encoding: URLEncoding.httpBody,headers: ["name": name, "date": date, "issue": issue, "id": id]).responseJSON{response in
            print(response)
        }
        
    }
    
    //MARK:- DELETE NOTES FUNCTION
    
    func deleteNote(id: String){
        //Enter your local host URL
        AF.request("http://192.168.1.8:8081/delete",method: .post, encoding: URLEncoding.httpBody,headers: ["id": id]).responseJSON{response in
            print(response)
        }
    }
}
