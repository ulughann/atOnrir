# 100 Saniyede TypeScript

Typescript, Microsoft tarafından yapılmış Javascript'in sözdisimsel bir süper kümesidir.

Yani Typescript yeni bir dil olmayı denemektense Javascript'in üzerine kendi söz dizimini inşa etmiş ve geliştiricilere kodlarında kullanabilecekleri yeni özellikler sunmuştur.

## Tipler

Bunların en önemlisi type sistemi yani tiplerdir. Javascript weakly typed yani zayıf yazılan bir dil olduğu için strongly typed dillere nazaran geliştiricilerin kodlarındaki değişken ve benzeri elementlerin tiplerini belirtme gereksinimini kaldırmıştır

Dilerseniz birkaç örneğe göz atalım.
Tek bir argüman alıp o sayının karekökünü dönen bir fonksiyon oluşturmak istiyorum

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

Ancak kodu çalıştırdığımızda ve bu kısma geldiğimizde sonuçtan dönüt olarak NaN yani Not a Number aldığımızı farkedeceğiz. Yani Javascript, çok olası bir hatayı, zayıf yazılan bir dil olduğu için tanıyamadı

Şimdi aynı şeyi Typescript ile deneyelim
Bu sefer argümanlarımızın ve döndüğümüz değerin tipini belirteceğiz ve kod bize henüz çalıştırmasak bile bir hata verecek.

```typescript
function kareKök(n: number): number {
  return Math.sqrt(n);
}

let sonuç = kareKök("selam"); // Hata
console.log(sonuç);
```