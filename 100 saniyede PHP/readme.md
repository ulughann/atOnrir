# 100 Saniyede PHP

Php, 1994 yılında Rasmus Lerdorf tarafından geliştirilen, sunucu taraflı, genel amaçlı bir programlama dilidir. Php Popülerliğinin zirvesine 2012 yılında ulaşmış ve günümüzde github ve stackoverflow verilerine göre dünyanın en çok kullanılan 12., stackoverflow 2023 geliştirici anketine göre ise de %18 ile en çok geliştiricinin bildiği 11. programlama dilidir.

![languish](image.png)
![stackoverflow](image-1.png)

Php, html'in içine embed edilen ilk dillerden biridir. Yani php kodu yazmaya başlamak için sonu nokta php ile biten bir dosya oluşturun ve içinde php tagını açarak kodlarınızı yazmaya başlayın.

```php
<html>
  <body>
    <?php
      echo "Merhaba Dünya!";
    ?>
  </body>
</html>
```

Bir değişken oluşturmak için $ işaretini kullanın ve ardından değişkeninizin ismini yazın.

```php
<?php
  $isim = "Abone ol!";
  echo $isim;
?>
```

Php, dinamik bir dil olduğu için değişkenlerin tiplerini belirtmenize gerek yoktur. Fakat modern php ile tipler belirtmek için type hinting kullanılabilir.

```php
<?php
  function selam(string $isim) {
    echo "merhaba" + $isim;
  }
?>
```

Php, her dilde bekleyeceğiniz modern özelliklerin çoğunu bulundurmaktadır.
Örneğin, koşul ifadeleri, döngüler, switch ve match ifadeleri, sınıflar ve daha fazlası.

```php
<?php
  $sayi = 5;
  if ($sayi > 10) {
    echo "Sayı 10'dan büyük";
  } else {
    echo "Sayı 10'dan küçük";
  }
?>
```


```php
<?php
  for ($i = 0; $i < 10; $i++) {
    echo $i;
  }
?>
```

```php
<?php
  $sayi = 0;
  while ($sayi < 10) {
    echo $sayi;
    $sayi++;
  }
?>
```

```php
<?php
  $sayi = 5;
  switch ($sayi) {
    case 1:
      echo "Sayı 1";
      break;
    case 2:
      echo "Sayı 2";
      break;
    default:
      echo "Sayı 1 ve 2 değil";
  }
?>
```

```php
<?php
$sayi = 5;
match ($sayi) {
  1 => echo "Sayı 1";
  2 => echo "Sayı 2";
  default => echo "Sayı 1 ve 2 değil";
}
```


```php
<?php
  public class Onrir {
    public $aboneSayısı = 850; // teşekkürler <3
    
    public function __construct($aboneSayısı) {
      $this->aboneSayısı = $aboneSayısı;
    }
  }
```

Çoğu kişi tarafından ölü bir dil olarak görülsede PHP günümüzde güncellemeler almaya ve her gün daha iyi bir dil olmaya çalışmaya devam ediyor. 

Fakat bu gün yeni bir projeye başlayacak olursanız büyük ihtimalle html'in içinde php kodu yazmak yerine Laravel gibi modern bir framework kullanıyor olacaksınız.

