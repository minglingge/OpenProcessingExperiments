
/*
◆課題「安定と変動」
【安定】レシピ
1行目はパス。
2行目は3の倍数。
3行目は2,3の倍数。
以上繰り返し。
ただし、11行目以降にはみ出さないものとする。

【変動】以下の位置に四角を描画する。
0   7
1   1,2,3,7,8
2   1,2
3   1,4,5,6,7,9
4   5,6,7,9
5   2,3,6,7,9
6   0,2,7
7   0,1
8   0,1,2,5,6,7,8,9
9   5,6,7,8

【感想】
安定はコードが短く、対照的に変動はコードが長くなるということは、
考えてみれば当たり前だがなるほどと感心した。
*/


size(600, 300);                                 //キャンバスサイズ
background(0,0,0);                          //背景色
noStroke();                                     //ふちを消す。

int a[] = {0,0};
fill(255,255,255);                          //色指定
for(a[0] = 0;a[0] < 10; a[0] ++){               //a[0]10まで
    for(a[1] = 0; a[1] < 10; a[1] ++){          //a[1]10まで
        if(a[1] % 3 == 1){
            if(a[0] % 3 == 2){
                rect(a[0]*30,a[1]*30,30,30);    //四角描画
            }
        }
        if(a[1] % 3 == 2){              //行が3で割って2の時
            if(a[0] % 3 == 0){
            }
            else{
                rect(a[0]*30,a[1]*30,30,30);    //四角描画
            }
        }
    }
}

fill(255,255,255);
rect(0*30+300,7*30,30,30);
//------------------------
fill(32,128,255);
rect(1*30+300,1*30,30,30);
rect(1*30+300,2*30,30,30);
rect(1*30+300,3*30,30,30);

fill(255,255,255);
rect(1*30+300,7*30,30,30);
rect(1*30+300,8*30,30,30);
//------------------------
fill(32,128,255);
rect(2*30+300,1*30,30,30);
rect(2*30+300,2*30,30,30);
//------------------------
fill(32,128,255);
rect(3*30+300,1*30,30,30);

fill(255,224,32);
rect(3*30+300,4*30,30,30);
rect(3*30+300,5*30,30,30);
rect(3*30+300,6*30,30,30);
rect(3*30+300,7*30,30,30);

fill(32,224,96);
rect(3*30+300,9*30,30,30);
//------------------------
fill(255,224,32);
rect(4*30+300,5*30,30,30);
rect(4*30+300,6*30,30,30);
rect(4*30+300,7*30,30,30);

fill(32,224,96);
rect(4*30+300,9*30,30,30);
//------------------------
fill(255,32,255);
rect(5*30+300,2*30,30,30);
rect(5*30+300,3*30,30,30);

fill(255,224,32);
rect(5*30+300,6*30,30,30);
rect(5*30+300,7*30,30,30);

fill(32,224,96);
rect(5*30+300,9*30,30,30);
//------------------------
fill(128,64,64);
rect(6*30+300,0*30,30,30);

fill(255,32,255);
rect(6*30+300,2*30,30,30);

fill(255,224,32);
rect(6*30+300,7*30,30,30);
//------------------------
fill(128,64,64);
rect(7*30+300,0*30,30,30);
rect(7*30+300,1*30,30,30);
//------------------------
fill(128,64,64);
rect(8*30+300,0*30,30,30);
rect(8*30+300,1*30,30,30);
rect(8*30+300,2*30,30,30);

fill(255,32,32);
rect(8*30+300,5*30,30,30);
rect(8*30+300,6*30,30,30);
rect(8*30+300,7*30,30,30);
rect(8*30+300,8*30,30,30);
rect(8*30+300,9*30,30,30);
//------------------------
fill(255,32,32);
rect(9*30+300,5*30,30,30);
rect(9*30+300,6*30,30,30);
rect(9*30+300,7*30,30,30);
rect(9*30+300,8*30,30,30); 