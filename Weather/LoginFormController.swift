//
//  LoginFormController.swift
//  Weather
//
//  Created by Иван Крылов on 27.10.2021.
//

import UIKit

class LoginFormController: UIViewController {
    
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passInput: UITextField!
    
 
    @IBAction func loginButton(_ sender: Any) {
             // performSegue(withIdentifier: ferstSegue, sender: self)
           }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // Получаем текст логина
               let login = loginInput.text!
               // Получаем текст-пароль
               let password = passInput.text!
               // Проверяем, верны ли они
               if login == "admin" && password == "123456" {
                return true
               } else {
                   // Создаем контроллер
                              let alert = UIAlertController(title: "Ошибка", message: "Введены неверные данные пользователя", preferredStyle: .alert)
                              // Создаем кнопку для UIAlertController
                              let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                              // Добавляем кнопку на UIAlertController
                              alert.addAction(action)
                              // Показываем UIAlertController
                              present(alert, animated: true, completion: nil)

                   return false
               }
    }

    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


