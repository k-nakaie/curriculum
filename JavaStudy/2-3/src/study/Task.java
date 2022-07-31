package study;

public class Task extends Calculator{
	// ① TaskクラスにCalculatorクラスを継承させなさい。

    /**
     * タスクの実行
     */
    public void doTask() {
    int plusValue = super.plus(10);
    System.out.println("plusメソッドの引数の数が一つの場合：" + plusValue);
    
    plusValue = super.plus(10,20);
    System.out.println("plusメソッドの引数の数が二つの場合：" + plusValue);
    
    plusValue = super.plus(10,20,30);
    System.out.println("plusメソッドの引数の数が三つの場合：" + plusValue);
    
     }

        // ② Calculator.javaのすべてのオーバーロードメソッド「plus」に適当な引数を与え、下記画像のよう出力されるようコーディングしなさい。
        // 尚、「どのクラスから呼び出しているか」を明確にするため、plus()には呼び出し元のキーワードを付与すること。

    }
