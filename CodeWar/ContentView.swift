//
//  ContentView.swift
//  CodeWar
//
//  Created by Chitralekha Yellewar on 25/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var playerScore = 0
    @State var cpuScore = 0
    @State var playerCard = "card9"
    @State var cpuCard = "card11"
    
    var body: some View {
        
        ZStack {
            Image("background").ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    // Random number
                    
                    let randomPlayer = Int.random(in: 2...14)
                    let randomCpu = Int.random(in: 2...14)
                    
                    //change the card
                    playerCard = "card" + String(randomPlayer)
                    cpuCard = "card" + String(randomCpu)
                    
                    // update the score
                    if randomPlayer > randomCpu {
                        playerScore += 1
                    } else if randomCpu > randomPlayer {
                        cpuScore += 1
                    }
                    
                }) {
                    Image("dealbutton")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        Text("Player").font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU").font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                            .foregroundColor(.white)
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
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
