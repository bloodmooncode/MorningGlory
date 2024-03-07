//
//  CommunityCityView.swift
//  Test02
//
//  Created by 张原溥 on 2021/11/28.
//

import SwiftUI
import CoreLocation

struct CommunityCityView: View {
    @StateObject var mapData = MapViewModel()
    // Location Manager
    @State var locationMAnager = CLLocationManager()
    @State var search = false
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    // MapView
                    MapView()
                        // using it as environment object so that it can be used in subView
                        .environmentObject(mapData)
                        .ignoresSafeArea(.all, edges: .all)
                    
                    VStack {
                        VStack(spacing: 0) {
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                
                                TextField("搜索地点..", text: $mapData.searchTxt)
                                    .colorScheme(.light)
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.white)
                            .offset(y: 30)
                            
                            // Displaying Results
                            if !mapData.places.isEmpty && mapData.searchTxt != "" {
                                ScrollView {
                                    VStack(spacing: 15) {
                                        ForEach(mapData.places) { place in
                                            Text(place.placemark.name ?? "")
                                                .foregroundColor(.black)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .padding(.leading)
                                                .onTapGesture {
                                                    mapData.selectPlace(place: place)
                                                }
                                            
                                            Divider()
                                        }
                                    }
                                    .padding(.top)
                                }
                                .background(Color.white)
                            }
                        }
                        .padding()
                        
                        Spacer()
                        
                        VStack {
                            Button(action:{self.search.toggle()}) {
                                Image(systemName: "eye.fill")
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.primary)
                                    .clipShape(Circle())
                            }
                            
                            Button(action: mapData.focusLocation) {
                                Image(systemName: "location.fill")
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.primary)
                                    .clipShape(Circle())
                            }
                            
                            Button(action: mapData.updateMapType) {
                                Image(systemName: mapData.mapType == .standard ? "network" : "map")
                                    .font(.title2)
                                    .padding(10)
                                    .background(Color.primary)
                                    .clipShape(Circle())
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                    }
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.1)
                .onAppear {
                    // Setting Delegate
                    locationMAnager.delegate = mapData
                    locationMAnager.requestWhenInUseAuthorization()
                }
                // Permission Denied Alert
                .alert(isPresented: $mapData.permissionDenied) {
                    Alert(title: Text("Permission Denied"), message: Text("Please Enable Permission In App Settings"), dismissButton: .default(Text("Go to Settings"), action: {
                        // Redirecting User to Settings
                        UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
                    }))
                }
                .onChange(of: mapData.searchTxt) { (value) in
                    // Searching Places
                    
                    // You can use your own delay time to avoid Continuos Search Request
                    let delay = 0.3
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                        if value == mapData.searchTxt {
                            // Search
                            self.mapData.searchQuery()
                        }
                    }
                }
                Spacer()
                
            }
            .cornerRadius(40)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .edgesIgnoringSafeArea(.bottom)
            
            if search{
                CitySearchView()
                    .transition(.move(edge: .top))
                    .animation(.easeInOut)
            }
        }
    }
}
struct Home_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCityView()
    }
}
