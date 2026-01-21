/***
 *                                                                                                                                                                        
 *    888888888888                                       88                                                 88888888888          88  88                                   
 *         88                             ,d             88                                                 88                   88  ""    ,d                             
 *         88                             88             88                                                 88                   88        88                             
 *         88   ,adPPYba,  8b,     ,d8  MM88MMM  ,adPPYb,88  8b,dPPYba,  ,adPPYYba,  8b      db      d8     88aaaaa      ,adPPYb,88  88  MM88MMM  ,adPPYba,   8b,dPPYba,  
 *         88  a8P_____88   `Y8, ,8P'     88    a8"    `Y88  88P'   "Y8  ""     `Y8  `8b    d88b    d8'     88"""""     a8"    `Y88  88    88    a8"     "8a  88P'   "Y8  
 *         88  8PP"""""""     )888(       88    8b       88  88          ,adPPPPP88   `8b  d8'`8b  d8'      88          8b       88  88    88    8b       d8  88          
 *         88  "8b,   ,aa   ,d8" "8b,     88,   "8a,   ,d88  88          88,    ,88    `8bd8'  `8bd8'       88          "8a,   ,d88  88    88,   "8a,   ,a8"  88          
 *         88   `"Ybbd8"'  8P'     `Y8    "Y888  `"8bbdP"Y8  88          `"8bbdP"Y8      YP      YP         88888888888  `"8bbdP"Y8  88    "Y888  `"YbbdP"'   88
 *                                                                                                       
 *
 *      Kodlama:
 *          Burak (Nexor)
 *
 *      Güncelleme Notları:
 *
 *      (16.12.2021) v1.0:
 *          İlk Sürüm.
 *
 *      (18.03.2022) v1.1:
 *          Textdraw Editor yeniden yazıldı.
 *          YSI kütüphanesi eklendi.
 *          Genel performans arttırıldı.
 *          Çoklu dil desteği eklendi.
 *          Textdrawları boş bir ekran da veya oyun içi dünyada düzenleyebileceğiniz seçenek eklendi.
 *          Sprite browser eklendi.
 *          0.3.7 sürümünde kullanmak için (NexTDE.txd) dosyası hazırlandı.
 *          Silinen textdrawları geri alma özelliği eklendi.
 *          Yapılan değişiklikleri geri ve ileri alma özelliği eklendi.
 *          Gruplama özelliği geliştirildi.
 *          Bilgi text eskiden sürekli kalıyordu artık otomatik gizleniyor.
 *
 *      (19.03.2022) v1.1 - Düzenleme 1:
 *          0.3.7 sürümünde Sprite Browser'ın geri, ileri ve kapat simgelerinin gözükmeme sorunu düzeltildi.
 *          Varsayılan NexTDE.txd dosyası artık ingilizce olarak ayarlandı.
 *
 *      (22.03.2022) v1.1 - Düzenleme 2:
 *          Araç oluşturma komutu eklendi.
 *          Dışa aktarma ile ilgili bir sorun düzeltildi.
 *          Silme ve geri getirmeyle ilgili bir sorun düzeltildi.
 *
 *      (25.03.2022) v1.2:
 *          Hangi textdrawı seçtiğinizi daha iyi anlamak için renk değiştirip orijinal hale dönen bir özellik eklendi.
 *          Selectable aktif olan textdrawlarda tıklayabileceğiniz alanı görme özelliği eklendi.
 *          Textdrawları hızlıca seçmek için yön tuşlarıyla seçim aracı eklendi.
 *          Editör sürümü 1.2 olarak ayarlandı.
 *
 *      (11.05.2022) v1.3:
 *          sscanf eklentisi güncellendi ve github deposuna eklendi.
 *          CrashDetect eklentisi github deposuna eklendi.
 *          Seçilen textdrawın rengi daha belirgin olması için değiştirildi.
 *          Gruplamada selectable özelliğini aktif edince veritaban güncellemesi ve textdraw tıklaması işlevi çalışmıyordu, düzeltildi.
 *          Eğer oyuncu spawn olur ve yön tuşlarıyla textdraw seçerse karakterin hareket etme sorunu düzeltildi.
 *          Seçilen bazı textdrawlardaki renk gözükmeme sorunu düzeltildi.
 *          Gruplamadaki konumlandırma özelliğine manuel offset arttırma eklendi (0.5 gibi değerler verilerek arttırılabilir) (N Tuşu ile menüyü açabilirsiniz)
 *          Gruplamadaki Global ve Player değerleri veritabanına güncelleme yapmıyordu, düzeltildi.
 *
 *      (02.06.2022) v1.4:
 *          Textdrawları içe aktarmak için renklere hex desteği eklendi.
 *          Textdrawların index sıralamasını değiştirmek için yeni bir işlev yazıldı.
 *          Preview models de yüksek kimlikli bir nesne varsa ve renk değiştirilirse ortaya çıkan bir hata düzeltildi.
 *
 *      (04.06.2022) v1.5:
 *          Textdrawı seçince belirgin olmasını engelleyen bir hata düzeltildi.
 *          Textdraw indexlerini eşzamanlı değiştirebilir ve görebilirsiniz.
 *          Index kaydırma özelliği eklendi, artık 0, 1, 2, 4 gibi indexleriniz 0, 1, 2, 3 olarak sıralanabilir.
 *
 *      (14.04.2023) v1.6:
 *          İçe ve dışa aktarmaya open.mp desteği eklendi.
 *              (18.04.2023) v1.6 Düzenlemesi:
 *                  open.mp sürümü için etiket desteği eklendi. Artık TEXT_DRAW_FONT_0, TEXT_DRAW_ALIGN_LEFT, true, false gibi çıktı alınıyor.
 */

// Kütüphaneler
#include    <a_samp>
#include    <player-limit>
#include    <zcmd>
#include    <YSI_Coding\y_va>
#include    <YSI_Data\y_iterate>
#include    <fi-timestamp>
#include    <easy-dialog>
#include    <sscanf2>
#include    <strlib>
#include    <RGB>

// [config] 
#include    "./src/config/settings.pwn"
#include    "./src/config/macros.pwn"
#include    "./src/config/colors.pwn"

// [Variables]
#include    "./src/variables/project.pwn"
#include    "./src/variables/actor.pwn"
#include    "./src/variables/textdraw.pwn"
#include    "./src/variables/page.pwn"
#include    "./src/hud/variables.pwn"

// [Language and Spawn Selection]
#include    "./src/tongue-and-spawn.pwn"

// [Hud]
#include    "./src/hud/functions.pwn"
#include    "./src/hud/hook.pwn"
#include    "./src/hud/project.pwn"
#include    "./src/hud/settings.pwn"
#include    "./src/hud/list.pwn"
#include    "./src/hud/depo.pwn"
#include    "./src/hud/new.pwn"
#include    "./src/hud/copy.pwn"
#include    "./src/hud/delete.pwn"
#include    "./src/hud/location.pwn"
#include    "./src/hud/textsize.pwn"
#include    "./src/hud/lettersize.pwn"
#include    "./src/hud/text.pwn"
#include    "./src/hud/font.pwn"
#include    "./src/hud/alignment.pwn"
#include    "./src/hud/ratio.pwn"
#include    "./src/hud/outline.pwn"
#include    "./src/hud/shadow.pwn"
#include    "./src/hud/colour.pwn"
#include    "./src/hud/box.pwn"
#include    "./src/hud/selectable.pwn"
#include    "./src/hud/preview-models.pwn"
#include    "./src/hud/global-player.pwn"
#include    "./src/hud/sprite-browser.pwn"
#include    "./src/hud/page.pwn"

// [Undo & Redo]
#include    "./src/back-forward/variables.pwn"
#include    "./src/back-forward/functions.pwn"
#include    "./src/back-forward/hook.pwn"

// [Excluído]
#include    "./src/deleted/variables.pwn"
#include    "./src/deleted/delete.pwn"
#include    "./src/deleted/functions.pwn"

// [Grupos]
#include    "./src/group/variables.pwn"
#include    "./src/group/group.pwn"
#include    "./src/group/functions.pwn"

// [Ganchos, Funções]
#include    "./src/hook.pwn"
#include    "./src/functions/geral.pwn"
#include    "./src/functions/textdraw.pwn"
#include    "./src/functions/database.pwn"

// [comandos]
#include    "./src/commands.pwn"

main()
{
    // Remove the YSI callbackfix file.
    if(fexist("callbackfix.amx")) fremove("callbackfix.amx");

    // Bilgi
    new tarih[3], saat[3];
    gettime(saat[0], saat[1], saat[2]), getdate(tarih[0], tarih[1], tarih[2]);
    printf("\n\t=================================");
    printf("\t|                               |");
    printf("\t|      %s %s      |", TDE_HOSTNAME, TDE_VERSION);
    printf("\t|                               |");
    printf("\t|  Coding:                      |");
    printf("\t|                               |");
    printf("\t|  Burak (Nexor)                |");
    printf("\t|  mateus-bsod                  |");
    printf("\t|                               |");
    printf("\t|  Loaded Date:                 |");
    printf("\t|                               |");
    printf("\t|  %02d.%02d.%04d, %02d:%02d            |", tarih[2], tarih[1], tarih[0], saat[0], saat[1]);
    printf("\t|                               |");
    printf("\t|  Github:                      |");
    printf("\t|                               |");
    printf("\t|  github.com/mateus-bsod       |");
    printf("\t|  Old: github.com/nexquery     |");
    printf("\t|                               |");
    printf("\t|                               |");
    printf("\t=================================\n");
}


// case 1: Mouse(playerid, true, TEXTMOD_SPRITE), Sprite_Menu();