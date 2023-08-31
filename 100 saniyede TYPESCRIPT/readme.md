# 100 Saniyede TypeScript

Typescript, Microsoft tarafından geliştirilmiş Javascript'in sözdisimsel bir süper kümesidir.

Yani Typescript yeni bir dil olmayı denemektense Javascript'in üzerine kendi söz dizimini inşa etmiş ve geliştiricilere kodlarında kullanabilecekleri yeni özellikler sunmuştur.

## Tipler

Bu özelliklerin en önemlisi type sistemi yani tiplerdir. Javascript weakly typed yani zayıf yazılan bir dil olduğu için strongly typed dillere nazaran geliştiricilerin kodlarındaki değişken ve benzeri elementlerin tiplerini belirtme gereksinimini kaldırmıştır

Dilerseniz birkaç örneğe göz atalım.
Tek bir argüman alıp o argümanın karekökünü dönen bir fonksiyon oluşturmak istiyorum

```javascript
function kareKök(n) {
  return Math.sqrt(n);
}
```

Bu kod gayet normal gözüksede çok büyük bir problemi var. Fonksiyonun aldığı argümanın ve döndüğü sonucun tipini bilmiyoruz. Örneğin bu fonksiyonu çağırırken bir sayı yerine bir string gönderirsek Javascript, kodun bu parçası çalışana kadar bize bir hata vermeyecektir.

```javascript
function kareKök(n) {
  return Math.sqrt(n);
}

let sonuç = kareKök("selam");
console.log(sonuç); // NaN
```

Fakat bir hata almasak bile kodu çalıştırdığımızda ve bu kısma geldiğimizde sonuçtan dönüt olarak NaN yani Not a Number aldığımızı farkedeceğiz. Yani Javascript, çok olası bir hatayı, zayıf yazılan bir dil olduğu için tanıyamadı

Şimdi aynı şeyi Typescript ile deneyelim ve
bu sefer argümanlarımızın ve döndüğümüz değerin tipini belirtelim.

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

Gördüğünüz üzere yazdığımız kod bize henüz çalıştırmasak bile bir hata verecektir.

## Interface ve Type Declarationlar

Typescript ile birlikte gelen bir diğer özellik ise interfacelerdir. Nasıl argümanlara ve değişkenlere tipler ekleyebiliyorsak interfaceler sayesinde objelerin de tiplerini belirleyebiliyoruz.

Bu özellik Rust, Go ve C dillerinde de bulabilecceğiniz Struct'lara benzetilebilir.

Yeni bir interface yani Arayüz oluşturmak için interface kelimesini kullanın ve ardından arayüzünüzün ismini yazın

Ardından her bir özelliğin tipini belirtin.

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
  email: "test@gmail.com",
};
```

⏬⏬⏬⏬⏬⏬⏬⏬⏬⏬

```typescript
let user: IUser = {
  isim: "fuekihigh",
  yas: 49,
  email: "test@gmail.com",
};
```

