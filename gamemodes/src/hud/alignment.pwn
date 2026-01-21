/*
                                                                                                   
                88  88                                                                                 
                88  ""                                                                          ,d     
                88                                                                              88     
    ,adPPYYba,  88  88   ,adPPYb,d8  8b,dPPYba,   88,dPYba,,adPYba,    ,adPPYba,  8b,dPPYba,  MM88MMM  
    ""     `Y8  88  88  a8"    `Y88  88P'   `"8a  88P'   "88"    "8a  a8P_____88  88P'   `"8a   88     
    ,adPPPPP88  88  88  8b       88  88       88  88      88      88  8PP"""""""  88       88   88     
    88,    ,88  88  88  "8a,   ,d88  88       88  88      88      88  "8b,   ,aa  88       88   88,    
    `"8bbdP"Y8  88  88   `"YbbdP"Y8  88       88  88      88      88   `"Ybbd8"'  88       88   "Y888  
                        aa,    ,88                                                                    
                        "Y8bbdP"                                                                     
 
 */

Hizalama()
{
    gIleri_Ekle(gIndex);
    Textler[gIndex][text.alignment] = (Textler[gIndex][text.alignment] >= 3) ? (1) : (Textler[gIndex][text.alignment] + 1);
    DB_Guncelle(gIndex);
    Textdraw_Render(gIndex, true), Hud_Render(true), Hud_Goster(true);
    return 1;
}