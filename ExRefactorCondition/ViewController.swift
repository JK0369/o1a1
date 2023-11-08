//
//  ViewController.swift
//  ExRefactorCondition
//
//  Created by 김종권 on 2023/11/08.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    func ex1() {
        let count = Int.random(in: 0...100)
        
        // refactoring 전
        let color: UIColor
        
        if count % 2 == 0 {
            color = .blue
        } else {
            color = .red
        }
        
        // refactoring1 후
        let newColor = {
            if count % 2 == 0 {
                return UIColor.blue
            } else {
                return .red
            }
        }()
        
        // refactoring2 후: closure 없고, return 키워드 생략 가능
        let simpleColor = if count % 2 == 0 { UIColor.blue }
        else { UIColor.red }
    }
    
    func ex2() {
        enum NumberType {
            case one
            case two
            case three
            case other
        }
        
        // refactoring 전
        let n = Int.random(in: 0...5)
        let type = {
            switch n {
            case 1: return NumberType.one
            case 2: return .two
            case 3: return .three
            default: return .other
            }
        }()
        
        // refactoring 후: closure와 return 키워드 생략
        let newType = switch n {
        case 1: NumberType.one
        case 2: NumberType.two
        case 3: NumberType.three
        default: NumberType.other
        }
    }
}
