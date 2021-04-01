//
//  ContentView.swift
//  CARD-GAME1
//
//  Created by Mehak Bansal on 20/02/21.
//

import SwiftUI

struct ContentView: View {
   @State var playercard = "card5"
   @State var cpucard = "card9"
   @State  var playerscore = 0
   @State  var cpuscore = 0
    
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            
    VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                
            HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                  }
                    Spacer()
        Button(action: {
            // generating random number btw 2-14
      let playerRand = Int.random(in:2...14)
    let cpuRand = Int.random(in:2...14)
            
            
            //updating card
            playercard = "card" + String(playerRand)
            cpucard = "card" + String(cpuRand)
              //updating score
            if(playerRand > cpuRand){
            playerscore += 1
          
            }
            else if cpuRand > playerRand {
             cpuscore += 1
            }
        }, label: {
                    Image("dealbutton")})
                    Spacer()
           HStack{
               Spacer()
                VStack{
                    Text("PLAYER ")
                        .font(.title)
                        .foregroundColor(Color.white)
                    Text(String(playerscore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                      }
                  Spacer()
               VStack{
                      Text("CPU").font(.title)
                        .foregroundColor(Color.white)
                      Text(String(cpuscore)).font(.largeTitle)
                        .foregroundColor(Color.white)
                     }
                  Spacer()
                 }
                Spacer()
        }
           
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
