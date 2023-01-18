//
//  ViewController.swift
//  10digit alert with value pass
//
//  Created by admin on 03/10/22.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var txtphone: UITextField!
    
    @IBOutlet weak var btneye: UIButton!
    @IBOutlet weak var btnlogin: UIButton!
    
    var eyebtn = true
    var sendgoogle : URL!
    
    
    
    override func viewDidLoad() {
        img.image = UIImage(named: "GOOGLE")
        
        
        super.viewDidLoad()
        txtphone.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == txtphone {
            let phonelenth = 10
            let currentString = (textField.text ?? "") as NSString
            let newString = currentString.replacingCharacters(in: range, with: string)
            let allowedcharacterSet = CharacterSet(charactersIn: "0123456789")
            let typedcharacterSetin = CharacterSet(charactersIn: string)
            let number = allowedcharacterSet.isSuperset(of: typedcharacterSetin)
            
            return newString.count <= phonelenth && number
        }
        return true
    }
    
    //second 10 digit value set condition
    
//    if textField.text?.count == 10 {
//                    return false
//                }
//
//             else if (textField == txt.text)  {
//
//                let allowedCharacters = CharacterSet(charactersIn:"1234567890")//Here change this characters based on your requirement
//                let characterSet = CharacterSet(charactersIn: string)
//                return allowedCharacters.isSuperset(of: characterSet)
//
//
//
//            }
//
//            return true
//        }
    
    
    //button action move the page
    @IBAction func btnlogin(_ sender: Any) {
        let phonenum = "9944631754"
        //sucess in login
        if (txtphone.text == phonenum){
            
        
                
                
            let alert = UIAlertController(title: "SUCESSFULLY", message: "login", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "LOGGED", style:.default,handler: {action in self.performSegue(withIdentifier: "svc", sender: nil)}))
                
                
                self.present(alert,animated: true,completion:nil)
                
                img2.image = UIImage(named: "happy")
                
                
                // urlTosend = URL(string:"https:www.google.com")
                
                //webview value pass "svc"
                
                
                
            }
            //empty password login action
            //first this function then wrong password action becuase only run this action otherwise doesnt run this funcrion
            else if (txtphone.text == ""){
                var alert = UIAlertController(title: "PASSWORDNEED", message: "empty", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "INPUT PASSWORD", style:.destructive,handler: nil))
                self.present(alert,animated: false,completion:nil)
                img2.image = UIImage(named: "confuse")
            }
            //wrong password login action
            else if (txtphone.text != phonenum){
                var alert = UIAlertController(title: "WRONGPASSWORD", message: "Entercorrectpassword", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "TRYAGAIN", style:.destructive,handler: nil))
                self.present(alert,animated: true,completion:nil)
                img2.image = UIImage(named: "think")
            }
            
        }
        //eyebutton set hide password so give the action in this place
        @IBAction func btneye(_ sender: Any) {
            
            // eyebutton visible if condition
            if (eyebtn == true){
                
                txtphone.isSecureTextEntry = false
                btneye.setImage(UIImage(named: "eye sticker"), for: .normal)
                //img3.image = UIImage(named: "eye sticker")
            }
            //eye button unvisible if condition
            else {
                txtphone.isSecureTextEntry = true
               // img3.image = UIImage(named: "")
                btneye.setImage(UIImage(named: " "), for: .normal)
                
            }
            eyebtn = !eyebtn
            //this function also visible the image in the function method
            //eyebtn.setImage(UIImage(named: "think"), for: .normal)
        }
        
      //value pass method simple
//        let sendValue = "8676"
//        override func prepare(for segue : UIStoryboardSegue,sender: Any?){
//            let processeing = segue.destination as! secondViewController
//            processeing.recievedValue = sendValue
        }

