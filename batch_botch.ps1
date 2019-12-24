$s = "　 ＋　　・　 ＋
　　　 ＼：／　　＋
＊ 　・‥☆‥・　　
　　＋ ／ｗ＼　 ＊
　　　　从从　＋
　 ＊　从9*▲　　 ＊
　　　9*★彡从 十
十　 ▲彡从9*★
　　彡从9*▲彡从　十
　 从9*★彡从9*▲
　9*◆彡从9*★彡从
`★彡从9*●彡从9*★
从从9*★彡从9*▲彡从
　　／　｜｜　＼
　　[巫巫巫巫巫]"

$t = @("＋", "・", "＼", "／", "‥", "＊", "十", "▲", "★", "◆", "●", "彡", "：")
$y = @("☆")
$g = @("ｗ", "从", "9", "*")
$b = @("｜")
$m = "　　　　　　　　　　　　今年のクリスマスは終了いたしました。またのご来クリをお待ちしております。　　　　　　　　　　　　"

$i = 0
cls
0..48 | %{
    $p = $_ % ($m.Length - 12)
    [char]0x1B+"[0d"
    [char]0x1B+"[>5h"
    $s.ToCharArray() | %{
        $c = $_.ToString()
        $color = "White"
        if($t.Contains($c)) {
            $i++
            if($i % 2 -eq 0) {
                $color = "Yellow"
            } else {
                $color = "Gray"
            }
        } elseif ($g.Contains($c)) {
            $color = "Green"
        } elseif ($y.Contains($c)) {
            $color = "Yellow"
        } elseif ($b.Contains($c)) {
            $color = "DarkRed"
        }
        Write-Host -NoNewline -ForegroundColor $color $c
    }
    "`n"
    $m.Substring($p, 12)
    sleep -Milliseconds 100

}
"　　　　　　　　　終
　　　　　　　制作・著作
　　　　　　　―――――
　　　　　　　　ⓇⒷⒾ"