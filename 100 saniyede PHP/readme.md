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

Günümüzde büyük ihtimalle html'in içinde php kodu yazmak yerine Laravel gibi modern bir framework kullanıyor olacaksınız.



