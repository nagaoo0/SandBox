/// @description scrAutotile
if AutoTile == true{
    switch mode{
    
        case mode.simple:
             if place_meeting( x, y-n, o) t = "1" else t = "0" 
             if place_meeting( x+n, y, o) r = "1" else r = "0" 
             if place_meeting( x, y+n, o) b = "1" else b = "0" 
             if place_meeting( x-n, y, o) l = "1" else l = "0" 
                
                c=t+r+b+l;
             
             switch c{
             
                case "0000":
                     image_index=0;                     
                break;
                
                case "0001":
                     image_index=1;                     
                break;
                
                case "0010":
                     image_index=2;                     
                break;
                
                case "0011":
                     image_index=3;                   
                break;
                
                case "0100":
                     image_index=4;                     
                break;
                
                case "0101":
                     image_index=5;                     
                break;
                
                case "0110":
                     image_index=6;                     
                break;                
                
                case "0111":
                     image_index=7;                     
                break;
                
                case "1000":
                     image_index=8;                     
                break;
                
                case "1001":
                     image_index=9;                     
                break;
                
                case "1010":
                     image_index=10;                     
                break;
                
                case "1011":
                     image_index=11;                     
                break;
                
                case "1100":
                     image_index=12;                     
                break;
                
                case "1101":
                     image_index=13;                     
                break;
                
                case "1110":
                     image_index=14;                     
                break;
                
                case "1111":
                     image_index=15;                     
                break;
             } 
                  
        break;
           
        case mode.moreTiles: //NEEDS UPDATE
             if place_meeting( x, y-n, o) a5 = "1" else a5 = "0" 
             if place_meeting( x+n, y, o) a6 = "1" else a6 = "0" 
             if place_meeting( x, y+n, o) a7 = "1" else a7 = "0" 
             if place_meeting( x-n, y, o) a8 = "1" else a8 = "0" 
                
                c=a1+a2+a3+a4+a5+a6+a7+a8;
             
             switch c{
             
                case "00000000":
                     image_index=0;                     
                break;
                
                case "00000001":
                     image_index=1;                     
                break;
                
                case "00000010":
                     image_index=2;                     
                break;
                
                case "00000011":
                     image_index=3;                     
                break;
                
                case "00000100":
                     image_index=4;                     
                break;
                
                case "00000101":
                     image_index=5;                     
                break;
                
                case "00000110":
                     image_index=6;                     
                break;                
                
                case "00000111":
                     image_index=7;                     
                break;
                
                case "00001000":
                     image_index=8;                     
                break;
                
                case "00001001":
                     image_index=9;                     
                break;
                
                case "00001010":
                     image_index=10;                     
                break;
                
                case "00001011":
                     image_index=11;                     
                break;
                
                case "00001100":
                     image_index=12;                     
                break;
                
                case "00001101":
                     image_index=13;                     
                break;
                
                case "00001110":
                     image_index=14;                     
                break;
                
                case "00001111":
                     image_index=15;                     
                break;
             } 
               
        break;
      
    }
}
