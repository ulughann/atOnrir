# 100 Saniyede TypeScript

Typescript, Microsoft tarafından geliştirilmiş Javascript'in sözdisimsel bir süper kümesidir.

Yani Typescript yeni bir dil olmayı denemektense Javascript'in üzerine kendi söz dizimini inşa eden ve geliştiricilere kodlarında kullanabilecekleri yeni özellikler sunan bir programlama dilidir.

Typescript, günümüzde Github ve Stackoverflow verilerine göre dünyanın en çok kullanılan 3.

![Languish](image-1.png)

Stackoverflow 2023 geliştirici anketine göre ise de %38lik bir oranla geliştiriciler tarafından en çok kullanılan 5. programlama dili olmuştur.

![Stackoverflow developer survey](image.png)

## Tipler

Typescript'in en önemli özelliklerinden biri tiplerdir.
Bir değişkenin tipini belirlemek için, isminin ardından bir iki nokta üst üste işareti koyun ve ardından tipini yazın.

```javascript
let isim = "Abone ol!";
```

⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬

```typescript
let isim: string = "Abone ol!";
```

Javascript zayıf ve dinamik bir dildir bu nedenle değişkenlerin tiplerini belirleme yükümlülüğü geliştiriciden alınır. Fakat bu durum Javascript'in bazı durumlarda hataları farketmesini zorlaştırır.

Dilerseniz birkaç örneğe göz atalım.
Tek bir argüman alıp o argümanın karekökünü dönen bir fonksiyon oluşturmak istiyorum

```javascript
function kareKök(n) {
  return Math.sqrt(n);
}
```

Bu kod gayet normal gözüksede çok büyük bir problemi var. Fonksiyonun aldığı argümanın ve döndüğü sonucun tipini bilmiyoruz. Örneğin bu fonksiyonu çağırırken bir sayı yerine bir string gönderirsek Javascript, bize bir hata vermeyecektir.

```javascript
function kareKök(n) {
  return Math.sqrt(n);
}

let sonuç = kareKök("selam");
console.log(sonuç); // NaN
```

Fakat hata almasak bile kodu çalıştırdığımızda ve kodun bu kısmına geldiğimizde sonuçtan dönüt olarak NaN yani Not a Number değerini alacağız. Yani Javascript, çok olası bir hatayı, zayıf yazılan bir dil olduğu için farkedemedi.

Şimdi aynı kodu typescript ile yazarsak ve argümanlarımızın tiplerini belirtirsek artık fonksiyonu yanlış bir şekilde çağırdığımızda hata alacağız.

```typescript
function kareKök(n: number): number {
  return Math.sqrt(n);
}

let sonuç = kareKök("selam"); // Hata
console.log(sonuç);
```

```
Argument of type 'string' is not assignable to parameter of type 'number'
```


## Interfaceler

Typescript ile birlikte gelen bir diğer özellik ise interfacelerdir. Nasıl argümanlara ve değişkenlere tipler ekleyebiliyorsak interfaceler sayesinde objelerin de tiplerini belirleyebiliyoruz.

Bu özellik Rust, Go ve C gibi dillerde de bulabilecceğiniz Struct'lara benzetilebilir.

Yeni bir interface yani Arayüz oluşturmak için interface kelimesini kullanın ve ardından arayüzünüzün ismini yazın ve her bir özelliğin tipini belirtin.

```typescript
interface IUser {
  isim: string;
  yas: number;
  email: string;
}
```

Arayüzümüzü kullanarak bir obje oluşturmak istediğimizde normal bir obje oluşturup objeye arayüzümüzün tipini ekleyebiliriz.

```javascript
let user = {
  isim: "fuekihigh",
  yas: 49,
  email: "vilez@gmail.com",
};
```

⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬

```typescript
let user: IUser = {
  isim: "fuekihigh",
  yas: 49,
  email: "vilez@gmail.com",
};
```

Bu ve bundan sonraki bütün videolarımın metinlerini, kaynakçalarını ve kod örneklerini githubda açık kaynak lisanslı bir projenin dahilinde bulabilirsiniz.

İzlediğiniz için teşekkürler, görüşmek üzere.

# Kaynakça

İstatistikler:

- [Stackoverflow Developer Survey 2023](https://survey.stackoverflow.co/2023/#most-popular-technologies-language)
- [Languish \(Github + Stackoverflow\)](https://tjpalmer.github.io/languish/)

Dil bilgisi:

- [Typescript Handbook](https://www.typescriptlang.org/docs/handbook/intro.html)
- [Typescript - w3Schools](https://www.w3schools.com/typescript/typescript_intro.php)

Special thanks to [Fireship](https://www.youtube.com/@Fireship) as always.
