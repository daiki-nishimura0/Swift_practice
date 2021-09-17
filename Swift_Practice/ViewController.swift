//
//  ViewController.swift
//  Swift_Practice
//
//  Created by daiki nishimura on 2021/09/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
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

        // print関数
        print(6, 2014, "林檎") // "6 2014 林檎"と表示
        // 空白に区切りを入れる
        print(6, 2014, "林檎", separator:";") // "6; 2014; 林檎"と表示
        // 改行する場合はterminatorで引数に改行箇所を指定

        // 配列　コレクションのひとつ　格納するインスタンスの方は同じでなければいけない
        var a = [2,5,8,11,7] //複数のインスタンスを格納するいれものの役割を担うものをコレクションと呼ぶ
        
        // var a : [Int] = [2,5,8,11,7] 上記の省略は推論されている
        
        var s = [String]() //イニシャライザの呼び出し
        var s : [String] = [] // 型を指定した変数に空配列を代入　上記と同様な初期化
        // リテラルだけでじゃんく式を入れることも可能
        var g = 1.2
        var f = [g/2.0, g/0.3, g/0.04]
        print(f) // [0.6,4.0,30.0]と表示
        
        
        // 配列要素へのアクセス
        let digits = ["00","01","02","03"]
        print(digits[2]) // 02を出力
        print(digits.count) //要素の個数を表す４を出力
        
        var nums = digits //numsには複製が作られる
        nums[2] = "Two" //変数には代入可能
        digits[2] = "Two" // エラー　定数には代入できない
        print(digits[2]) //０２を出力
        print(nums) //["00","01","Two","03"]
        
        //演算子
        a++ //swiftではしようできない
        a += 1 //aはインクリメントされる
        
        a = b = 1 // できない
        //文法エラー　if文の中で==と=の書き間違えを防止するため
        if a = 1 {
            
        }
        //演算子の記述に関する注意
        a + b //二項演算子
        a+b //二項演算子
        
        a+ b //後置演算子？
        a +b //前置演算子？
        // 以下構文はエラー
        n /(i +1) //修正するには、演算子 / と +　の前後に空白をいれるか、取り除くか
        
        
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var practiceLabel: UILabel!

}
