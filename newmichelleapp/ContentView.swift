//
//  ContentView.swift
//  newmichelleapp
//
//  Created by Michelle Elias Flores on 4/27/23.
//


import SwiftUI
struct ContentView: View {
    @State private var currentIndex = 0
    @State private var currentHobbie = ""
    let hobbies = ["I am 18 years old!", "I love the color pink", "I am a CS Major", "I want to go to Spain someday", "I can eat and peel an orange in less than 45 seconds!"]

    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                Text("All about Michelle :)")
                    .font(.largeTitle)
                                    .padding(.top, -200)
                                Text("I do track for STEVENS!! GO DUCKS")
                                    .font(.title2)
                                    .padding(.top, -175)

                                Image("me")
                                    .resizable()
                                    .padding(.top, -150)
                                    .frame(width: 210, height: 100, alignment: .bottom)

                                Text(currentHobbie)
                                    .font(.title3)
                                    .padding(.top, 50)
                            }
                            VStack {
                                Button(action: {
                                    if currentIndex < hobbies.count {
                                        currentHobbie = hobbies[currentIndex]
                                        currentIndex += 1
                                    } else {
                                        currentHobbie = "Nothing else is interesting!"
                                        currentIndex = 0
                                    }
                                }) {
                                    Text("Learn about me!")
                                        .padding()
                                        .background(Color.white)
                                        .foregroundColor(.black)
                                        .cornerRadius(10)
                                        .frame(width: 210, height: 100, alignment: .bottom)
                                }
                            }
                            .padding()
                        }

                    }
                }

                
            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

