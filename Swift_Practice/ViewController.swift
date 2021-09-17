//
//  ViewController.swift
//  Swift_Practice
//
//  Created by daiki nishimura on 2021/09/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var practiceLabel: UILabel!

}

//変数の定義
// 型宣言と初期値を記述
var age : Int = 18
// 初期値から型を推論（ageは整数型)
var age = 18
// varで宣言した変数は値を変更できる
age = 20

var width = 10.5, height = 9.25, kind = "Rect"
var pack: Int = 0, x, y: Int, ram, rem: Double

// 定数の定義
let name : String = "C.Alcott"
let age = 2014 - 1997
// 一行で変数と定数を書く場合
let myName = "E. Mably"; var myAge = 17

// 型変換　値に違う型が入るとエラーになる
let i: Int = 10
let a: Double = i // エラー

let r: Double = 0.1
var f:Float = r // エラー
// 計算時に型が違う場合 暗黙の型変換は行われない
let w:Double = 0.5
let i: Int = 10
let b = w * i //エラー

// 上記を解決するコード　Double()は関数ではなくDouble型のインスタンスを新しく作るためのイニシャライザ（初期化するための特殊なメソッド）
let i: Int = 10
var a: Double = Double(i) // iの値をDouble型に変換してaに代入
var j: Int = Int(a * 1.25) // 問題なし。jの値は１２
// Int8型は−１２８から１２７までの表現できない
let i = Int8(100 * 9) // エラー。数字が１２７より大きい為
var u = UInt(-1) // エラー。負数は符号なし整数に変換できない

// ある型を使って計算した結果がその型で表現できないパターン
let b: Int8 = 40, c: Int8 = 80
let d = b * c // エラーInt8ま１２７まで
let u = UInt(10)
var v = u - 11 // エラー結果が負数になる
// 以下は小数点が切り捨てられる
let f = Float(-3.125)
let i = Int(f) // iの値は−３

var t:Double = 8 // 実数のインスタンスが作られて代入される
let s = t * 10 // 実数の変数tと演算をする実数インスタンスがつくられる

// 文字列
let name = "那須原"
let msg = "こんにちは、" + name + "さん" //こんにちは那須原さん

var homework = "理科"
homework += "「夜空の観察」" // 夜空の観察

//特殊文字をunicodeで表す
let specialKeys = "command=\u{2318}, option=\u{2325}"
// "comand=コマンド記号、option=記号

// 文字列埋め込み
let n = 8
let str = "\(n)の２乗は\(n*n)です。" // 8の2乗は６４です
