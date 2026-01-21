/***
                                      
                                        88                                    
                                        88                                    
                                        88                                    
                                        88,dPPYba,    ,adPPYba,  8b,     ,d8  
                                        88P'    "8a  a8"     "8a  `Y8, ,8P'   
                                        88       d8  8b       d8    )888(     
                                        88b,   ,a8"  "8a,   ,a8"  ,d8" "8b,   
                                        8Y"Ybbd8"'    `"YbbdP"'  8P'     `Y8  
                                                                            
                                      
 */

Box()
{
    gIleri_Ekle(gIndex);
    Textler[gIndex][text.usebox] = (Textler[gIndex][text.usebox] == 0) ? (1) : (0);
    DB_Guncelle(gIndex);
    Textdraw_Render(gIndex, true);
    Hud_Render(true), Hud_Goster(true);
    return 1;
}