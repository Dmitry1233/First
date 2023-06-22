//
//  ViewController.swift
//  Dev_1
//
//  Created by Dmitry on 19.06.2023.
//

import UIKit

class ViewController: UIViewController {
    var myView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.lightText
    
        
//        var myView = UIView.init()
//        var label = UILabel()
//       // self.myView = myView
//
//
//
//        //Startovie dannye
//
//        let indent: CGFloat = 2  //промежуток
//        let startX: CGFloat = 20 //отступ икс
//        let startY: CGFloat = 100//отступ игрек
//
//        var corY: CGFloat = 50 //текущая координата вьюхи
//        var corX: CGFloat = 50//текущая координата вьюхи
//        var startTextX: CGFloat = 0
//        var startTextY: CGFloat = 0
////        var width: CGFloat = 30
////        var height: CGFloat = 30
//
//        var frSizeOld: CGFloat = 0
//        var frSizeNew: CGFloat = 0
//
//        var kvadrat: CGFloat = 0 //грань квадрата
        
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onTap))
//        myView.addGestureRecognizer(tapGesture)
        
//        let myView2 = UIView()
//        myView.addSubview(myView2)
//        myView2.backgroundColor = UIColor.yellow
//        myView2.frame = CGRect(x: 10, y: 10, width: 50, height: 50)
//        myView.bounds.origin.y = 50
//        (1..<11).reversed().forEach { x in
//            label = UILabel()
//            view.addSubview(label)
//            label.text = "\(x)"
//            label.sizeToFit()
//            frSizeNew = label.frame.width
//            kvadrat = (view.frame.size.width - label.frame.width - startTextX - indent*20)/10  //размер квадрата
//            print(kvadrat)
//            //вычисляем сдвиг лейбл
//            if (frSizeNew < frSizeOld){
//                startTextX += frSizeOld - frSizeNew
//                frSizeOld = frSizeNew
//            }
//            else {
//                frSizeOld = frSizeNew
//            }
//            label.frame.origin = CGPoint(x: startTextX, y: corY)
//            corX = startTextX + label.frame.width + indent //вычисляем старт вьюхи по икс
//                        //КВАДРАТЫ
//                        (0..<10).forEach { x in
//                            myView = UIView()
//                            myView.frame = CGRect(x: corX, y: corY, width: kvadrat, height:kvadrat)
//                            myView.backgroundColor = UIColor.blue
//                            view.addSubview(myView)
//                            corX += kvadrat + indent
//                        }
//                        //конец квадраты
//            corY += kvadrat + indent// смещение текста по У
//
//        }
        
        
        
        
        
        
        
//        let label = UILabel()
//        view.addSubview(label)
//        label.text = "Hello"
//        label.sizeToFit()
//        label.frame.origin = CGPoint(x: 100, y: 400)
        
        //КВАДРАТЫ
        
//        (0..<10).forEach { x in
//            (0..<10).forEach { y in
//
//                myView = UIView()
//                myView.frame = CGRect(x: corX, y: corY, width: width, height: height)
//                corY += myView.frame.height + indent
//                myView.backgroundColor = UIColor.blue
//                view.addSubview(myView)
//            }
//            corY = startY
//            corX += myView.frame.height + indent
//        }
       
         //добавили переменную надпись
//     //ОСЬ Y
//        (1..<11).reversed().forEach { z in //
//            label = UILabel() // до конца не втыкаю что мы этим делаем
//            view.addSubview(label) //добавляем лейбл в конец очереди
//            label.text = "\(z)" // пихаем переменную в лейбл
//
//            label.sizeToFit() //пока с размером не заморачивался
//            label.baselineAdjustment = .alignCenters
//            //label.sizeThatFits(CGSize(width: width, height: height)) //тест другого метода
//
//            frSizeNew = Int(label.frame.width)
//            //выравниваем по правому краю
//
//            if (frSizeNew < frSizeOld){
//                startTextX += CGFloat(Int(frSizeOld) - frSizeNew)
//                frSizeOld = frSizeNew
//            }
//            else {
//                frSizeOld = frSizeNew
//            }
//            label.frame.origin = CGPoint(x: startTextX, y: corY) //заменю на верхнее
//            corY += myView.frame.height + indent// смещение по У
//
//        }
       //ОСЬ X
//        corX = startX
//        (1..<11).forEach { z in //
//            label = UILabel()
//            view.addSubview(label)
//            label.text = "\(z)"
//            label.sizeToFit()
//            label.baselineAdjustment = .alignCenters
//            label.frame.origin = CGPoint(x: corX, y: startTextY)
//            corX += myView.frame.width + indent
//        }
        
        
        var maxWidth:CGFloat = 0
        
        (0 ..< 10).forEach { raw in
            let label = UILabel()
            label.text = String(10-raw)
            label.sizeToFit()
            view.addSubview(label)
            maxWidth = max(maxWidth, label.frame.width)
            label.frame.size.width = maxWidth
            label.textAlignment = .right
            let spacing:CGFloat = 1
            let square = (view.frame.width - maxWidth - spacing) / 10
            label.frame.origin.y = square * CGFloat(raw)
            
            (0..<10).forEach { column in
                let view = UIView()
                view.frame = CGRect(
                    x: maxWidth + spacing + square * CGFloat(column),
                    y: square * CGFloat(raw),
                    width: square - spacing,
                    height: square - spacing)
                view.backgroundColor = .blue
                self.view.addSubview(view)
                print(self.view.subviews.count)
            }
            print(view.subviews.count)
        }
        print(view.subviews.count)
        view.subviews[77].backgroundColor = .green
        
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false //отключили ресайдинг маски
        view.addSubview(stack) //вставили стак в иерархию
        //stack.heightAnchor.constraint(equalToConstant: 30).isActive = true //задали высоту стака
       // stack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true //задали ширину стака
        stack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        //stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.backgroundColor = .red
        stack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
       // stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true //дополнительный сдвиг -10
        (0..<15).forEach { a in
            let label = UILabel()
            label.text = String(a)
            stack.addArrangedSubview(label)
            label.textAlignment = .center
        }
        stack.spacing = 3
        //stack.distribution = .fillEqually
        stack.axis = .vertical
    }
    
    @objc private func onTap() {
        
        let myView3 = UIView()
        
        myView3.backgroundColor = UIColor.green
        myView?.addSubview(myView3)
        
        let myView4 = UIView()
        myView4.backgroundColor = UIColor.green
        myView?.addSubview(myView4)
       
        UIView.animate(withDuration: 0.5, animations: {
            myView4.frame = CGRect(x: 0, y: self.myView!.bounds.midY - 5, width: 100, height: 10)
        }, completion: { _ in
            UIView.animate(withDuration: 0.5, animations: {
                myView3.frame = CGRect(x: self.myView!.bounds.midX - 5, y: 0, width: 10, height: 100)
            })
        })
        
        
        
        
//        print(123)
//        UIView.animate(withDuration: 0.5) {
//            self.myView?.backgroundColor = UIColor(
//                red: CGFloat.randomColor(),
//                green: CGFloat.randomColor(),
//                blue: CGFloat.randomColor(),
//                alpha: 1
//            )
//       }
        
//        myView?.removeFromSuperview()
    }

}

extension CGFloat {
    static func randomColor() -> CGFloat {
        CGFloat(Float.random(in: 0...255))/255
    }
}


