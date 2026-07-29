<?php
// Q1 変数と文字列
$name = '杉浦';
echo '私の名前は『' . $name . '』です。';

// Q2 四則演算
$num = 5 * 4;
$num /= 2;  var_dump($num);

// Q3 日付操作
$day = date('Y年m月d日');   var_dump($day);
$today = date('H時i分s秒');    var_dump($today);
echo '現在時刻は、' . $day . $today . 'です';


// Q4 条件分岐-1 if文
$device = 'windows';
if($device == 'windows'){echo '使用OSは、windowsです。';}
if($device == 'mac'){echo '使用OSは、macです。';}
if($device != 'windows' &&  $device != 'mac'){
    echo 'どちらでもありません。';
}



// Q5 条件分岐-2 三項演算子
$age = 20;
echo($age >= 18) ? '成人です。' : '未成年です。';


// Q6 配列
$area = ['熊本県', '福岡県', '佐賀県', '栃木県', '千葉県'];
echo $area[3] . 'と' . $area[4] . 'は関東の都道府県です。';


// Q7 連想配列-1
$kantou = [
    '東京都' => '新宿区',
    '神奈川県' => '横浜市',
    '千葉県' => '千葉市',
    '埼玉県' => 'さいたま市',
    '栃木県' => '宇都宮市',
    '群馬県' => '前橋市',
    '茨城県'=> '水戸市',
    ];


// Q8 連想配列-2
foreach ($kantou as $ken => $kentyo) {
    if($ken === '埼玉県'){
        echo $ken . 'の県庁所在地は' . $kentyo . 'です。';
    }
}



// Q9 連想配列-3
$kantou['北海道'] = ['札幌'];
$kantou['沖縄'] = ['那覇'];var_dump($kantou);

foreach ($kantou as $ken => $kentyo){
if($ken === '北海道'|| $ken === '沖縄'){
    echo $ken . 'は関東地方ではありません。';
}else{echo $ken . 'の県庁所在地は' . $kentyo . 'です。';
}}


// Q10 関数-1
function hello($name){
    return $name . 'さん〜' .'こんにちは。' 
;} 
echo hello('金谷');
echo hello('安藤');




// Q11 関数-2
function calcTaxInPrice($price){
    return $price * 1.1;
}
$price = 1000;

$taxprice = calcTaxInPrice($price);
var_dump($taxprice);
echo $price . 'の商品の税込価格は' . $taxprice . 'です。';


// Q12 関数とif文
function distinguishNum ($num){
    if ($num % 2 === 0){return $num . 'は偶数です。';
}if($num % 2 === 1){return $num . 'は奇数です。';}}

$bangou1 = distinguishNum(11);
$bangou2 = distinguishNum(24);


echo $bangou1;
echo $bangou2;


// Q13 関数とswitch文
function evaluateGrade($garde){
    switch ($garde) {
    case 'A':
    case 'B':
        return '合格です。';
    case 'C':
        return '合格ですが、追加課題があります。';
    case 'D':
        return '不合格です。';
        default :
        return '判定不明です。講師に問い合わせください。';
}}

$garde1 = evaluateGrade('A');
$garde2 = evaluateGrade('E');

var_dump($garde1);  
var_dump($garde2);



?>