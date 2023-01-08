package check;

import constants.Constants;

public class Main {
	
	//課題①firstName →　自分の名字　lastName →　自分の名前で初期化
			private static  String  firstName = "中家";
			private static String lastName = "健吾";
			
//			課題②
//			【Main.java】にてfirstNameとlastNameを引数で受け取って、
//			連結して表示させるメソッド「printName」を作成しなさい。
//			作成した関数のアクセス修飾子は「private」とする
			private static void printName(String firstName, String lastName) {
				
				System.out.println("printNameメソッド →" + firstName + lastName);
			}

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ	
		//課題③
		//【Main.java】にてPetクラスとRobotPetクラスをインスタンス化して、
		//下記の完成イメージを出力させなさい。
		printName(firstName,lastName);
		
		Pet pet = new Pet(Constants.CHECK_CLASS_JAVA, Constants.CHECK_CLASS_HOGE);
		Pet robotPet = new RobotPet(Constants.CHECK_CLASS_R2D2, Constants.CHECK_CLASS_LUKE);
		pet.introduce();
		robotPet.introduce();
	}

}
