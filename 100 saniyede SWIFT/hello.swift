class Kullanici {
    var isim: String
    var abone: Bool

    init(isim: String, abone: Bool) {
        self.isim = isim
        self.abone = abone
    }
}

func aboneOl(kullanici: Kullanici) {
    print("Abone olundu")
}

var user = Kullanici(isim: "Ahmet", abone: true)
aboneOl(kullanici: user)
