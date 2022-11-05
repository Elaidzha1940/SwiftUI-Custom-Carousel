//
//  Home.swift
//  SwiftUI Custom Carousel Slider
//
//  Created by Elaidzha Shchukin on 05.11.2022.
//

import SwiftUI

//Nov 5

struct Home: View {
    ///To capture the current tab...
    @State var selectedTab: Peaky = peakys [0]
    
    var body: some View {
        
        
        ZStack {
            
            ///To get screen size for image...
            GeometryReader {proxy in
                
                let frame =  proxy.frame(in: .global)
                
                Image(selectedTab.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: frame.width, height: frame.height,
                           alignment: .center)
                    .cornerRadius(0)
                
            }
            .ignoresSafeArea()
            
           /// Custom Carousel...
            
            VStack {
                
                Text("Peaky Blinders")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Shelby Limited")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.top, 30)
                ///Carousel...
                
                VStack {
                    
                    GeometryReader {proxy in
                        
                        let frame = proxy.frame(in: .global)
                        
                        ///Page tab View...
                        TabView(selection: $selectedTab) {
                            
                            ForEach(peakys) {peaky in
                                
                                Image(peaky.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: frame.width - 10, height: frame.height,
                                           alignment: .center)
                                    .cornerRadius(10)
                                  ///.tag(peaky)
                            }
                        }
                        
                        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                        
                    }
                    .frame(height: UIScreen.main.bounds.height / 2.2)
                    
                    Text(selectedTab.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 5)
                        .padding(.bottom)
                }
                .padding(.top)
                .padding(.horizontal, 10)
                .padding(.bottom, 5)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.horizontal, 15)
                
                Button(action: {}, label: {
                    Text("Get Started")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.vertical, 15)
                        .frame(maxWidth: .infinity)
                        .background(Color.brown)
                        .cornerRadius(12)
                })
                .padding(.top, 20)
                .padding(.horizontal)
            }
            .padding()
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
