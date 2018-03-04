//
//  ViewController.swift
//  Flash Chat
//
//  Created by Aditya on 1/02/2018.


import UIKit
import Firebase

class ChatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    // Declare instance variables here

    
    // We've pre-linked the IBOutlets
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    @IBOutlet var sendButton: UIButton!
    @IBOutlet var messageTextfield: UITextField!
    @IBOutlet var messageTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: Set yourself as the delegate and datasource here:
        
        messageTableView.delegate = self
        messageTableView.dataSource = self
        
        //TODO: Set yourself as the delegate of the text field here:

        
        
        //TODO: Set the tapGesture here:
        
        

        //TODO: Register your MessageCell.xib file here:
        messageTableView.register(UINib(nibName:"MessageCell",bundle:nil), forCellReuseIdentifier:"customMessageCell" )

        configuretableView()    
        
    }

    ///////////////////////////////////////////
    
    //MARK: - TableView DataSource Methods
    
    
    
    //TODO: Declare cellForRowAtIndexPath here:
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //customMessageCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "customMessageCell", for: indexPath)as! CustomMessageCell
        
        cell.messageBody.text = "cell text"
        
        return cell
       
    }
    
    
    //TODO: Declare numberOfRowsInSection here:
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
    }
    
    //TODO: Declare tableViewTapped here:
    
    
    
    //TODO: Declare configureTableView here:
    
    func configuretableView(){
        
        messageTableView.rowHeight = UITableViewAutomaticDimension
        messageTableView.estimatedRowHeight = 120.0
        
        
    }
    
    
    ///////////////////////////////////////////
    
    //MARK:- TextField Delegate Methods
    
    

    
    //TODO: Declare textFieldDidBeginEditing here:
    
    
    
    
    //TODO: Declare textFieldDidEndEditing here:
    

    
    ///////////////////////////////////////////
    
    
    //MARK: - Send & Recieve from Firebase
    
    
    
    
    
    @IBAction func sendPressed(_ sender: AnyObject) {
        
        
        //TODO: Send the message to Firebase and save it in our database
        
        
    }
    
    //TODO: Create the retrieveMessages method here:
    
    

    
    
    
    @IBAction func logOutPressed(_ sender: AnyObject) {
        
        //TODO: Log out the user and send them back to WelcomeViewController
        do{
        
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
        }
        catch{
            print("error while logging out")
        }
        
        
    }
    


}
