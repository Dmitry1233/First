//
//  ViewController.swift
//  Dev_1
//
//  Created by Dmitry on 19.06.2023.
//

import UIKit

class ViewController: UIViewController {
    var myView: UIView?

    // тк обьект еще нам понадобится и я это знаю, то сразу в переменной сохраняю чтобы потом иметь доступ
    private let gameBoard = GameBoard(itemColor: .blue)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        gameBoard.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(gameBoard)
        gameBoard.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        gameBoard.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        gameBoard.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        gameBoard.heightAnchor.constraint(equalTo: gameBoard.widthAnchor).isActive = true

        
        
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
        
        
//        var maxWidth:CGFloat = 0
//
//        (0 ..< 10).forEach { raw in
//            let label = UILabel()
//            label.text = String(10-raw)
//            label.sizeToFit()
//            view.addSubview(label)
//            maxWidth = max(maxWidth, label.frame.width)
//            label.frame.size.width = maxWidth
//            label.textAlignment = .right
//            let spacing:CGFloat = 1
//            let square = (view.frame.width - maxWidth - spacing) / 10
//            label.frame.origin.y = square * CGFloat(raw)
//
//            (0..<10).forEach { column in
//                let view = UIView()
//                view.frame = CGRect(
//                    x: maxWidth + spacing + square * CGFloat(column),
//                    y: square * CGFloat(raw),
//                    width: square - spacing,
//                    height: square - spacing)
//                view.backgroundColor = .blue
//                self.view.addSubview(view)
//                print(self.view.subviews.count)
//            }
//            print(view.subviews.count)
//        }
//        print(view.subviews.count)
//        view.subviews[77].backgroundColor = .green





//
//        let vStack = UIStackView()
//        (1..<11).forEach { d in
//
//            let hStack = UIStackView()
//            vStack.translatesAutoresizingMaskIntoConstraints = false //отключили ресайдинг маски
//            view.addSubview(vStack) //вставили стак в иерархию
//            //stack.heightAnchor.constraint(equalToConstant: 30).isActive = true //задали высоту стака
//            //stack.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true //задали ширину стака
//            vStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//            //stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//            vStack.backgroundColor = .red
//            vStack.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
//           // stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true //дополнительный сдвиг -10
//            let label = UILabel()
//            label.text = String(d)
//            hStack.addArrangedSubview(label)
//            label.textAlignment = .center
//            label.heightAnchor.constraint(equalToConstant: 30).isActive = true
//            label.widthAnchor.constraint(equalToConstant: 30).isActive = true
//            (0..<10).forEach { a in
//                let view = UIView()
//                hStack.spacing = 5
//                hStack.axis = .horizontal
//                view.backgroundColor = .black
//                view.heightAnchor.constraint(equalToConstant: 30).isActive = true
//                view.widthAnchor.constraint(equalToConstant: 30).isActive = true
//                hStack.addArrangedSubview(view)
//            }
//            vStack.addArrangedSubview(hStack)
//            vStack.spacing = 5
//            //stack.distribution = .fillEqually
//            vStack.axis = .vertical
//        }
//
//
//        let hStack2 = UIStackView()
//        hStack2.backgroundColor = .blue
//
//        let hLabel2 = UILabel()
//
//        hLabel2.textAlignment = .center
//        hLabel2.backgroundColor = .green
//        hLabel2.heightAnchor.constraint(equalToConstant: 30).isActive = true
//        hLabel2.widthAnchor.constraint(equalToConstant: 30).isActive = true
//        hStack2.addArrangedSubview(hLabel2)
//
//        (1..<11).forEach { a in
//            let hLabel = UILabel()
//            hLabel.text = String(a)
//
//            hLabel.textAlignment = .center
//            hLabel.backgroundColor = .green
//            hLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
//            hLabel.widthAnchor.constraint(equalToConstant: 30).isActive = true
//            hStack2.addArrangedSubview(hLabel)
//        }
//        hStack2.spacing = 5
//        //stack.distribution = .fillEqually
////        hStack2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
//
//        hStack2.axis = .horizontal
//        vStack.addArrangedSubview(hStack2)
//


        
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

// свой класс GameBoard со своим набором методов, от UIView тк наследуемся от минимально достаточного
final class GameBoard: UIView {
    // параметры при создании обьекта
    init(itemColor: UIColor) {
        let hStacks = (0..<10).map { _ in
            let items = (0..<10).map { _ in
                let x = UIView()
                x.backgroundColor = itemColor
                return x
            }
            let stack = UIStackView(arrangedSubviews: items)
            stack.distribution = .fillEqually
            stack.spacing = 1
            return stack
        }
        let vStack = UIStackView(arrangedSubviews: hStacks)
        vStack.axis = .vertical
        vStack.spacing = 1
        vStack.distribution = .fillEqually
        vStack.translatesAutoresizingMaskIntoConstraints = false

        // тк мы наследуемся, то надо вызвать родительский инит
        // это не всегда актуально, но в нашем случае нужно, тк нельзя использовать self, пока класс не проинициализирован до конца
        // а инициализация идет сверху вниз, типа сперва в нашем классе, потом ниже и ниже

        // init есть convenience и required, по этому приходится вызвать этот init у родительского класса
        super.init(frame: .zero)

        // вот тут как раз неявно идет использование self
        // ну как неявно, self просто можно не писать когда находишься "внутри себя"
        // и тк мы в наследнике от UIView, то добавляем "на себя"
        addSubview(vStack)
        vStack.topAnchor.constraint(equalTo: topAnchor).isActive = true
        vStack.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        vStack.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        vStack.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    // это приходится прописывать (пусть и на генерации) тк любой класс можно создать из сториборда или ксибы
    // а значит такой инит тоже возможен
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

