class Car {
  const Car(
      {required this.imagenetworkAdress2,
      required this.imagenetworkAdress3,
      required this.imagenetworkAdress4,
      required this.alisfiyat,
      required this.satisfiyat,
      required this.enyuksekfiyat,
      required this.durum,
      required this.aciklama,
      required this.carKm,
      required this.model,
      required this.pacgake,
      required this.imagenetworkAdress,
      required this.brand});


  final String carKm;
  final String imagenetworkAdress;
  final String imagenetworkAdress2;
  final String imagenetworkAdress3;
  final String imagenetworkAdress4;
  final String model;
  final String pacgake;
  final String brand;
  final String aciklama;
  final int alisfiyat;
  final int satisfiyat;
  final int enyuksekfiyat;
  final String durum;
  //satıldı
//bekliyor
//iptal

  //internet demosu için oluşturuldu
  static List<Car> carsStatic = [
    Car(
        brand: "Chevrolet",
        aciklama: "2019 Model 15.000 km ",
        carKm: "130",
        model: "Corvette",
        pacgake: "Expodition",
        imagenetworkAdress: "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/2020-Chevrolet-Corvette-Stingray/0x0.jpg?fit=crop&format=jpg&crop=4560,2565,x790,y784,safe",
        imagenetworkAdress2: "https://www.wallpaperflare.com/static/53/995/692/landscape-corvette-corvette-c7-red-wallpaper.jpg",
        imagenetworkAdress3: "https://c4.wallpaperflare.com/wallpaper/258/916/843/chevy-corvette-z06-wallpaper-preview.jpg",
        imagenetworkAdress4: "https://c4.wallpaperflare.com/wallpaper/63/957/121/chevy-corvette-z06-wallpaper-preview.jpg",
        alisfiyat: 8015,
        durum: "satıldı",
        enyuksekfiyat: 8048,
        satisfiyat: 9585),
    Car(
        brand: "Ferrari",
        aciklama: "2021 Model 0 km",
        carKm: "0",
        model: "SF90 Stadale",
        pacgake: "Xclass",
        imagenetworkAdress: "https://c4.wallpaperflare.com/wallpaper/945/1000/863/car-ferrari-laferrari-ferrari-vehicle-wallpaper-preview.jpg",
        imagenetworkAdress2: "https://c4.wallpaperflare.com/wallpaper/612/589/153/car-super-car-ferrari-ferrari-laferrari-wallpaper-preview.jpg",
        imagenetworkAdress3: "https://c4.wallpaperflare.com/wallpaper/852/146/553/car-red-vehicle-ferrari-488-gtb-wallpaper-preview.jpg",
        imagenetworkAdress4: "https://c4.wallpaperflare.com/wallpaper/532/157/241/ferrari-488-gtb-car-red-cars-wallpaper-preview.jpg",
        alisfiyat: 4892,
        durum: "iptal",
        enyuksekfiyat: 18456,
        satisfiyat: 8595),
  ];
}

