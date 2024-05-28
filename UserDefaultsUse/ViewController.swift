//
//  ViewController.swift
//  UserDefaultsUse
//
//  Created by Atilla Çıtırık on 28.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        ud.set("Ahmet", forKey: "ad")
        ud.set( 23, forKey: "yas")
        ud.set( 1.78, forKey: "boy")
        ud.set( true, forKey: "bekar")

        let liste = ["ali","ece"]
        ud.set(liste, forKey: "liste")
        
        let sehirler = ["16":"bursa","34":"İstanbul"]
        ud.set( sehirler, forKey: "sehirler")
        
//        ud.removeObject(forKey: "ad")
        
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok"
        let gelenYas = ud.integer(forKey: "yas")
        let gelenBoy = ud.double(forKey: "boy")
        let gelenBekar = ud.bool(forKey: "bekar")
        let gelenListe = ud.array(forKey: "liste") ?? [String]()
        let gelenDic = ud.dictionary(forKey: "sehirler") ?? [String:String]()
        
        print("Gelen Ad: \(gelenAd)")
        print("Gelen Yas: \(gelenYas)")
        print("Gelen boy: \(gelenBoy)")
        print("Gelen Bekar: \(gelenBekar)")
        for a in gelenListe {
            print("gelen isim: \(a)")
        }
        
        for (anahtar,deger) in gelenDic {
            print("Gelen şehir \(anahtar) -> \(deger) ")
        }
        
        var sayac = ud.integer(forKey: "sayac")
        sayac = sayac + 1
        
        ud.set(sayac, forKey: "sayac")
        labelSayac.text = "Acilis sayısı \(sayac)"
        
        
    }


}

