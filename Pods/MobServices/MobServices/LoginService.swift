//
//  LoginService.swift
//  MobServices
//
//  Created by Angel Vasa on 07/02/21.
//

import Foundation

public class LoginService {
    public var onSuccess: () -> () = { }
    public init() {
        print("LOGIN SERVICE")
        DispatchQueue.main.asyncAfter(deadline: .now() + 4.0) {
            self.onSuccess()
        }
    }
}
