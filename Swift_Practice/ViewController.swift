//
//  ViewController.swift
//  Swift_Practice
//
//  Created by daiki nishimura on 2021/09/17.
//

import UIKit //フレームワークのインポート
//import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        
//        // 引数ラベルの指定と省略
//        func area(h:Double, w:Double) -> Double {
//            return h * w
//        }
//        // 以下で呼び出せる
//        let a = area(h: 10.0, w: 12.5)
//        // 引数ラベルを書き足す
//        func area(height h:Double, width w:Double) -> Double {
//            return h * w
//        }
        // 以下で呼び出し
//        let a = area(height: 10.0, width: 12.5)
        
        
//        // 引数ラベル
//        func buy(product:Int, price:Int, quantity:Int) {
//            print("Product:\(product), amount = \(price * quantity)")
//        }
//        // 呼び出し側での記述　実引数とともに記述される識別子を引数ラベルと呼ぶ
//        buy(product: 19090, price: 180000, quantity: 1)
        
        
//        // returnの省略
//        // 以下の関数は同じ定義
//        var total = 199
//        func messageA() -> String {
//            return "現在の値は\(total)です"
//        }
//        func messageB() -> String { "現在の値は\(total)です" }
//
//        // 関数定義の概要
//        var total = 0
//
//        func count(n: Int) -> Int { // 整数の引数を１つとり、整数を返す
//            total += n
//            return total
//        }
//
//        func reset() { total = 0} // 引数も返り値もなし
//
//        reset()
//        let a = 10
//        let b = count(n: a - 5) // 実引数の値は５
//        print("\(count(n: a))") // 関数の返り値として１５を表示
//        reset()                 // ０に戻す
//        print("\(count(n: -2))")// -2を表示
//
//        let fortune = ["大吉\u{2661}", "中吉\u{266a}", "小吉", "末吉", "凶\u{1f61e}", "大凶\u{1f480}"]
//        let idx = Int(time(nil)) % fortune.count
//        print(fortune[idx])
        
//        //変数の定義
//        // 型宣言と初期値を記述
//        var age : Int = 18
//        // 初期値から型を推論（ageは整数型)
//        var age = 18
//        // varで宣言した変数は値を変更できる
//        age = 20
//
//        var width = 10.5, height = 9.25, kind = "Rect"
//        var pack: Int = 0, x, y: Int, ram, rem: Double
//
//        // 定数の定義
//        let name : String = "C.Alcott"
//        let age = 2014 - 1997
//        // 一行で変数と定数を書く場合
//        let myName = "E. Mably"; var myAge = 17
//
//        // 型変換　値に違う型が入るとエラーになる
//        let i: Int = 10
//        let a: Double = i // エラー
//
//        let r: Double = 0.1
//        var f:Float = r // エラー
//        // 計算時に型が違う場合 暗黙の型変換は行われない
//        let w:Double = 0.5
//        let i: Int = 10
//        let b = w * i //エラー
//
//        // 上記を解決するコード　Double()は関数ではなくDouble型のインスタンスを新しく作るためのイニシャライザ（初期化するための特殊なメソッド）
//        let i: Int = 10
//        var a: Double = Double(i) // iの値をDouble型に変換してaに代入
//        var j: Int = Int(a * 1.25) // 問題なし。jの値は１２
//        // Int8型は−１２８から１２７までの表現できない
//        let i = Int8(100 * 9) // エラー。数字が１２７より大きい為
//        var u = UInt(-1) // エラー。負数は符号なし整数に変換できない
//
//        // ある型を使って計算した結果がその型で表現できないパターン
//        let b: Int8 = 40, c: Int8 = 80
//        let d = b * c // エラーInt8ま１２７まで
//        let u = UInt(10)
//        var v = u - 11 // エラー結果が負数になる
//        // 以下は小数点が切り捨てられる
//        let f = Float(-3.125)
//        let i = Int(f) // iの値は−３
//
//        var t:Double = 8 // 実数のインスタンスが作られて代入される
//        let s = t * 10 // 実数の変数tと演算をする実数インスタンスがつくられる
//
//        // 文字列
//        let name = "那須原"
//        let msg = "こんにちは、" + name + "さん" //こんにちは那須原さん
//
//        var homework = "理科"
//        homework += "「夜空の観察」" // 夜空の観察
//
//        //特殊文字をunicodeで表す
//        let specialKeys = "command=\u{2318}, option=\u{2325}"
//        // "comand=コマンド記号、option=記号
//
//        // 文字列埋め込み
//        let n = 8
//        let str = "\(n)の２乗は\(n*n)です。" // 8の2乗は６４です
//
//        // print関数
//        print(6, 2014, "林檎") // "6 2014 林檎"と表示
//        // 空白に区切りを入れる
//        print(6, 2014, "林檎", separator:";") // "6; 2014; 林檎"と表示
//        // 改行する場合はterminatorで引数に改行箇所を指定
//
//        // 配列　コレクションのひとつ　格納するインスタンスの方は同じでなければいけない
//        var a = [2,5,8,11,7] //複数のインスタンスを格納するいれものの役割を担うものをコレクションと呼ぶ
//
//        // var a : [Int] = [2,5,8,11,7] 上記の省略は推論されている
//
//        var s = [String]() //イニシャライザの呼び出し
//        var s : [String] = [] // 型を指定した変数に空配列を代入　上記と同様な初期化
//        // リテラルだけでじゃんく式を入れることも可能
//        var g = 1.2
//        var f = [g/2.0, g/0.3, g/0.04]
//        print(f) // [0.6,4.0,30.0]と表示
//
//
//        // 配列要素へのアクセス
//        let digits = ["00","01","02","03"]
//        print(digits[2]) // 02を出力
//        print(digits.count) //要素の個数を表す４を出力
//
//        var nums = digits //numsには複製が作られる
//        nums[2] = "Two" //変数には代入可能
//        digits[2] = "Two" // エラー　定数には代入できない
//        print(digits[2]) //０２を出力
//        print(nums) //["00","01","Two","03"]
//
//        //演算子
//        a++ //swiftではしようできない
//        a += 1 //aはインクリメントされる
//
//        a = b = 1 // できない
//        //文法エラー　if文の中で==と=の書き間違えを防止するため
//        if a = 1 {
//
//        }
//        //演算子の記述に関する注意
//        a + b //二項演算子
//        a+b //二項演算子
//
//        a+ b //後置演算子？
//        a +b //前置演算子？
//        // 以下構文はエラー
//        n /(i +1) //修正するには、演算子 / と +　の前後に空白をいれるか、取り除くか
//
//        //識別子
//        //UpperCamelCase
//        Int Void AnyObhect CustomStringConvertible
//        //lowerCamelCase
//        message totalCount nextPartialResult
//        //型パラメータ
//        var a: [Int] //通常こちらの記法（わかりやすさ重視）
//        var a:  Array<Int>　//このようにも書ける（本来の記法）
//
//        // if文
//        let b: Int
//        if a >= 0 {
//            b = a
//        } else {
//            b = -a
//        }
//        // 制御構文
//        // 代入を一行で複数行おこなう
//        target = obj; selector = name; count -= 1
        
//        // while文
//        let val = 10032
//        var i = 1, mask = 2
//        while mask <= val {
//            mask <<= 1 //maskを１ビットずらす
//            i += 1
//            print(mask)
//        } // ループを出た時のiが、求めるビット数
        
        // repeat-while文
        // コラッツの問題 正整数nが偶数の時、n/2を、奇数の時3n+1を行う
//        var n = 7
//        repeat {
//            print("\(n) ", terminator: "") // 改行しない
//            if n % 2 == 0 {
//                n /= 2
//            } else {
//                n = n * 3 + 1
//            }
//        } while n > 1
//        print(n)
        
//        // for-in文
//        for i in 1 ..< 10 {
//            var line = ""
//            for j in 1 ..< 10 {
//                let n = i * j
//                if n < 10 { line += " "}
//                line += "\(n)"
//                }
//            print(line)
//        }
//        // switch分
//        switch n {
//        case 0:
//            print("none")// breakは不要
//        case 1:          // エラー。何か文がなければならない
//        case 2, 3:       // 複数を列挙する場合はこのように記述
//            print("a few")
//        case 4, 5:       // 上の節から下に実行が及ぶことはない
//            print("some")
//        case 6: break    // breakを記述してもOK
//        default:         // defaultは最後に記述
//            print("several")
//        }
//
//        let 追試下限 = 45
//        var score = 65 // たとえば得点が65点なら
//        switch score {
//        case 追試下限..<75: print("追試") //
//        case 90...100: print("秀")
//        case 80..<90: print("優")
//        case 70..<80: print("良")
//        case 60..<70: print("可")
//        default:
//            print("不可")
//        }
//        // ラベル付きのループ文
//        let days = 31
//        let firstDay = 2
//        var w = 0
//        while w < firstDay {
//            print("   ", terminator: "")
//            w += 1
//        }
//        var d = 1
//        loop: while true {
//            while w < 7 {
//                let pad = d < 10 ? " " : ""
//                print(pad + " \(d)", terminator: "")
//                w += 1
//                d += 1
//
//                if d > days {
//                    print()
//                    break loop
//                }
//            }
//            print()
//            w = 0
//        }
        
//        // ラベル付きのif文、switch文
//        // 閏年の判定
//        let year = 2024
//        leap: if year % 4 == 0 {
//            if year % 100 == 0 {
//                if year % 400 == 0 {
//                    print("\(year)年は400で割り切れるので閏年")
//                    break leap
//            }
//                print("\(year)年は100で割り切れるので閏年ではない")
//                break leap
//        }
//        print("\(year)年は４で割り切れるので閏年")
//        } else {
//            print("\(year)年は４で割り切れないので閏年ではない")
//        }
        
//        // do分
//        let blood = "b"
//        search: do {
//            for t in ["A", "B", "O", "AB"] {
//                if blood == t { break search }
//            }
//            print("見つかりませんでした")
//        }
//
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var practiceLabel: UILabel!

}
