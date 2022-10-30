//
//  ViewController.swift
//  [iOS] LoginProject
//
//  Created by 유현이 on 2022/10/27.
//

import UIKit

final class ViewController: UIViewController{
    
    private let loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAddTarget()
    }
    
    private func setupAddTarget() {
        loginView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        loginView.passwordResetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped() {
        print("다음화면으로 넘어가기")
    }
    
    @objc func resetButtonTapped() {
        let alert = UIAlertController(title: "비밀번호 재설정", message: "비밀번호를 재설정 하시겠습니까?", preferredStyle: .alert)
        let success = UIAlertAction(title: "확인", style: .default) { action in
            print("확인버튼이 눌렸습니다.")
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel) { action in
            print("취소버튼이 눌렸습니다.")
        }
        alert.addAction(success)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
}
