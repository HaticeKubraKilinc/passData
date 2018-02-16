//
//  ViewController.swift
//  passData
//

import UIKit


import SwiftHash
import Foundation
import MessageUI


class ViewController: UIViewController ,MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var output: UITextField!
    
    @IBAction func enter(_ sender: Any)
    {
          //let input = textField.text
      
       let a = MD5(textField.text!)
        
          output.text = a
        
    }
  
  
    @IBAction func sendEmailButton(_ sender: Any) {
        let MailComposeViewController = configureMailComposeViewController()
        if  MFMailComposeViewController.canSendMail() {
            self.present(MailComposeViewController, animated: true, completion: nil)
        }
        else {
            self.sendEmailErrorAlert()
        }
        
    }
    
    @IBOutlet weak var gonderilicekAdres: UITextField!
    
    
    
    func configureMailComposeViewController() -> MFMailComposeViewController
    {
       // gönderici hesabın bilgileri passwordu girişi yapılması  gönderilen hesap konu sifreli mesajın öncesinin ve sonrasının yollanılması stps ... ?
        //  uı dizaynın kalanının yapılması
        
        
        let mailComposerVC = MFMailComposeViewController()
        //mailComposerVC.mailComposerDelegate = self    tek bir harf hatası
        //let adress = gonderilicekAdres
        //mailComposerVC.setSubject(adress?)
        
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setCcRecipients(["htckbr_@outlook.com"])
        mailComposerVC.setSubject("encrypt message")
        mailComposerVC.setMessageBody(  "/(textField) size bu mesajı yolladı /(output)" , isHTML: false)
        
        
        return mailComposerVC
  
    }
    
    func sendEmailErrorAlert(){
        
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        controller.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    


}


