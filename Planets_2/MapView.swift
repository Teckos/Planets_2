//
//  ContentView.swift
//  TestPaths
//
//  Created by Teck Hao Tea on 27/10/2022.
//
//
//
// VIRER TOOLBAR                     251       OK
//
//
//
//
//


import SwiftUI

struct MapView: View {
    //@State private var rot = 0.0
    @State private var rev = 0.0
    //@State private var revOld = 0.0
    @State var scale:CGFloat = 1.8
    @State private var scaleNew: CGFloat = 0.0
    @State var scroll = CGSize.zero
    @State var scrollOld = CGSize(width: 0.0, height: -200.0)
    @State var isTapped: Bool = false
    @State var isTouched: Bool = false
    @State private var dragOk = false
    @State var posIndexAstre: Int
    @State var rota: Double = 45.0
    //var switchRotaY = displayText
    @State var defaultRotaY = true    //@State var rot: Double = 0.0
    @State var rotaNew: Angle = Angle(degrees: 0)
    @State var playPause = 1
    @State var slow = 10
    @State var speed = 1
    @State var displayText: Bool = false
 
    @ObservedObject var timeManager = TimeManager()
    var body: some View {
        ZStack{
            Rectangle()
                .ignoresSafeArea()
            Image("voieLactée")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .ignoresSafeArea()
                .offset(x: (scrollOld.width + scroll.width)/50, y: (scrollOld.height + scroll.height + (displayText ? 100 : 0)) / 50)
                .opacity(1)
//                Rectangle()
//                    .fill(.black)
//                    .ignoresSafeArea()
//                    .opacity(0.1)
            
                
//Bloc carte
                ZStack{
//
//Affichage planètes
                    ZStack{
                        Rectangle()
                                                .ignoresSafeArea()
                                                .opacity(0.001)
                        ZStack{
//                            Orbites(index : 4 , rayon: 0, startAngle: 360, endAngle: 0, rayonP: 0.75, offX: 0, offY: 0, rev: rev, revSpeed: 1, scale: 1, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            
                            Planete(index: 12, rayon: 60, startAngle: 360, endAngle: 0, rayonP: 0.49, offX:0, offY: 30, rev: rev, revSpeed: 1.5, scale: 1, width: 0.5,isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            
                            ZStack{
                                ZStack{
                                    ZStack{
                                        Planete(index : 10,rayon: 20, startAngle: 360, endAngle: 0, rayonP: 0.15, offX: 0, offY: 10, rev: rev, revSpeed: 10, scale: 1, width: 0.4, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                        //                                }.offset(y: 30)
                                        //                                    ZStack{
                                        Planete(index : 10,rayon: 30, startAngle: 360, endAngle: 0, rayonP: 0.25, offX: 15, offY: 0, rev: rev, revSpeed:5, scale: 1,width: 0.4, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                    }.offset(y: 30)
                                }
                                //.rotation3DEffect(.degrees(15), axis: (x: 1, y: 1, z: 0))
                                    
                            }
                            .rotation3DEffect(.degrees(-rev)*1.5, axis: (x: 0, y: 0, z: 1))
                                
                            
                            Planete(index: 11, rayon: 180, startAngle: 360, endAngle: 0, rayonP: 0.49,offX:90, offY: 0, rev: rev, revSpeed: 0.5, scale: 1,width: 0.6, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            ZStack{
                                ZStack{
                                    Planete(index : 10,rayon: 30, startAngle: 360, endAngle: 0, rayonP: 0.15, offX: 0, offY: 15, rev: rev, revSpeed: 2.35, scale: 1,width: 0.4, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                }
                                .offset(x: 90, y: 0)
                            }
                            .rotation3DEffect(.degrees(rev)*0.5, axis: (x: 0, y: 0, z: -1)/*,anchor: UnitPoint(x: 1, y: 1)*/)
                           
                            Planete(index: 11, rayon: 280, startAngle: 360, endAngle: 0, rayonP: 0.6,offX:-140, offY: 0, rev: rev, revSpeed: 0.4, scale: 1,width: 0.5, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            ZStack{
                                ZStack{
                                    Planete(index : 10,rayon: 15, startAngle: 360, endAngle: 0, rayonP: 0.15, offX: 0, offY: 7.5, rev: rev, revSpeed: 3.14, scale: 1,width: 0.4, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                    Planete(index : 10,rayon: 25, startAngle: 360, endAngle: 0, rayonP: 0.35, offX: 0, offY: -12.5, rev: rev, revSpeed: 1.95, scale: 1,width: 0.4, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                    Planete(index : 10,rayon: 35, startAngle: 360, endAngle: 0, rayonP: 0.25, offX: 0, offY: 17.5, rev: rev, revSpeed: 1.65, scale: 1,width: 0.4, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                }
                                .offset(x: -140, y: 0)
                            }
                            .rotation3DEffect(.degrees(rev)*0.4, axis: (x: 0, y: 0, z: -1)/*,anchor: UnitPoint(x: 1, y: 1)*/)
                            
                            
                            Group{
                                Orbites(index: 1, rayon: 120, startAngle: 20, endAngle: 0, rayonP: 1, offX: 0, offY: 0, rev: rev, revSpeed: 0.9, scale: 1, width: 0.4, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                Orbites(index: 1, rayon: 120, startAngle: 120, endAngle: 80, rayonP: 1, offX: 0, offY: 0, rev: rev, revSpeed: 1, scale: 1, width: 0.4,isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                Orbites(index: 1, rayon: 125, startAngle: 220, endAngle: 140, rayonP: 1, offX: 0, offY: 0, rev: rev, revSpeed: 1.1, scale: 1, width: 0.4,isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                Orbites(index: 1, rayon: 115, startAngle: 360, endAngle: 260, rayonP: 1, offX: 0, offY: 0, rev: rev, revSpeed: 1.3, scale: 1, width: 0.4,isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                                Orbites(index: 1, rayon: 120, startAngle: 160, endAngle: 90, rayonP: 1, offX: 0, offY: 0, rev: rev, revSpeed: 0.8, scale: 1, width: 0.4,isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            }
                            
                        }.opacity(1)
                          //.rotation3DEffect(.degrees(rev), axis: (x: 0, y: 0, z: 1))
                        
                        
                        /*ZStack(){
                           // Rectangle()
                            Orbites(index : 1,rayon: 0, startAngle: 360, endAngle: 0, rayonP: 1, offY: 0, rev: rev, revSpeed: 0, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index : 2,rayon: 50, startAngle: 360, endAngle: 0, rayonP: 0.35, offY: -25, rev: rev, revSpeed: 4.15, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index : 3 ,rayon: 92.5, startAngle: 360, endAngle: 0, rayonP: 0.87, offY: -46.25, rev: rev, revSpeed: 1.6, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index : 4 , rayon: 128, startAngle: 360, endAngle: 0, rayonP: 0.92, offY: -64, rev: rev, revSpeed: 1, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index: 5, rayon: 195, startAngle: 360, endAngle: 0, rayonP: 0.49, offY: -97.5, rev: rev, revSpeed: 0.53, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index: 6, rayon: 664.6, startAngle: 310, endAngle: 0, rayonP: 10.027, offY: -332.3, rev: rev, revSpeed: 0.084, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index: 7, rayon: 1223, startAngle: 270, endAngle: 0, rayonP: 8.6, offY: -611.5, rev: rev, revSpeed: 0.034, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index: 8, rayon: 2451, startAngle: 240, endAngle: 0, rayonP: 3.7, offY: -1225.5, rev: rev, revSpeed: 0.011, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index: 9, rayon: 3838, startAngle: 220, endAngle: 0, rayonP: 3.6, offY: -1919, rev: rev, revSpeed: 0.006, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            Planete(index : 19 , rayon: 350, startAngle: 360, endAngle: 0, rayonP: 0.5, offY: 175, rev: rev, revSpeed: 0.5, scale: scale, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
                            
                        }
                        .opacity(1)*/
                           .scaleEffect(x:scale, y: scale)
                            .rotation3DEffect(.degrees(rota) , axis: (x: 1, y: (displayText ? -0.3 : -0.5), z: 0), perspective: 0.10)
                            
                        .onAppear{
                            self.timeManager.start()
                            withAnimation(Animation.easeOut(duration:Double(3600/speed*slow)).repeatForever()){
                                rev = 360000
                            }
                        }
                    }
//FIN affichage planètes

                  
                .offset(x: scrollOld.width + scroll.width, y: scrollOld.height + scroll.height + (displayText ? 100 : 100))
//                .onTapGesture {
//                    withAnimation {
//                        isTapped = false
//                    }
//                }

                
                .gesture(DragGesture()
                    .onChanged { gesture in
                        scroll = gesture.translation
                        print("scroll: \(scroll)")
                    }
                    .onEnded { gesture in
                        scrollOld.width += scroll.width
                        scrollOld.height += scroll.height
                        scroll = CGSize.zero
                        print("scrollOld: \(scrollOld)")
                        print("scale: \(scale)")
                    }
                    .onEnded{ value in
                        withAnimation{
                            scale += scaleNew
                            scaleNew = 0
                        }
                    })
//                .simultaneousGesture(
//                    TapGesture(count: 2) {
//                        scale += 0.5
//                    }
//                )
            
//FIN Bloc carte
                
                ZStack{
                    Spacer()

//      PANNEAU DE CONTROLES REVOLUTION
                    VStack{
//      SLIDERS DEBUG
                        /*Text("Rotation").padding(.vertical, -5)
                         Slider(value: $rot, in: 0...70).frame(width:   300).padding(.vertical, -10)*/
                        Text("Zoom")
                            .padding(.bottom, -10)
                        Slider(value: $scale, in: 0.01...10)
                            .frame(width: 300)
                            //.padding(.bottom)
                        
                        Text("Rota")
                            //.padding(.top, 15)
                            .padding(.bottom, -10)
                        
                        Slider(value: $rota, in: 0...180)
                            .frame(width: 300)
                            //.padding(.bottom, 30)
                        
                        
                        
                        Text("Revolution")
                            //.padding(.top, 15)
                            .padding(.bottom, -10)
                        
                        Slider(value: $rev, in: 0...3600)
                            .frame(width: 300)
                            .padding(.bottom, 30)
                        
                    }.offset(y:300)
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .opacity(1)
                    
//      FIN PANNEAU DE CONTROLES REVOLUTION
                    //

            }
        }
                         }
    }
}


struct Arc: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool

    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment

        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
}

struct Planete: View {
    //var rot: Double
    var index: Int
    var rayon: CGFloat
    var startAngle: CGFloat
    var endAngle: CGFloat
    var rayonP: CGFloat

    var offX: CGFloat
    var offY: CGFloat
    var rev: CGFloat
    var revSpeed: CGFloat
    var scale: CGFloat
    var width: CGFloat
    @Binding var isTapped: Bool
    @State var isTouched: Bool
    @Binding var posIndexAstre: Int
    var displayText: Bool
    @State var selectionColor: String = ".white"
    var body: some View {
        ZStack{
            
            Circle()
                .frame(width: rayonP, height: rayonP)
                .foregroundColor(isTouched ? .red : .white)
//                .rotation3DEffect(.degrees(-rot), axis: (x: 1, y: 0, z: 0), anchorZ: 0, perspective: 0.10)
                .offset(x: 0, y: offY)
                .scaleEffect(x: scale, y: scale)
                .rotation3DEffect(.degrees(-rev * revSpeed), axis: (x: 0, y: 0, z: 1), anchorZ: 0, perspective: 0.10)
            
            Orbites(index: index, rayon: rayon, startAngle: startAngle, endAngle: endAngle, rayonP: rayonP, offX: offX, offY: offY, rev: rev, revSpeed: revSpeed, scale: scale, width: width, isTapped: $isTapped, isTouched: isTouched, posIndexAstre: $posIndexAstre, displayText: displayText)
            
        }
    }
    

}

struct Orbites: View {

    var index: Int
    var rayon: CGFloat
    var startAngle: CGFloat
    var endAngle: CGFloat
    var rayonP: CGFloat

    var offX: CGFloat
    var offY: CGFloat
    var rev: CGFloat
    var revSpeed: CGFloat
    var scale: CGFloat
    var width: CGFloat
    @Binding var isTapped: Bool
    @State var isTouched: Bool
    @Binding var posIndexAstre: Int
    var displayText: Bool
    @State var selectionColor: String = ".white"
    var body : some View {
        
        ZStack{

            Arc(startAngle: .degrees(startAngle), endAngle: .degrees(endAngle), clockwise: false)
                .stroke(.white, lineWidth: width/scale)
                .scaleEffect(x: scale, y: scale)
                .frame(width: rayon, height: rayon)
                .rotation3DEffect(.degrees(-rev * revSpeed), axis: (x: 0, y: 0, z: 1), perspective: 0.1)
            
                Arc(startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                    .stroke(isTouched ? Color.red : Color.white, lineWidth: width/scale)
                    .frame(width: rayonP * 15, height: 5)
                    .offset(x: offX, y: offY)
                    .scaleEffect(x: scale, y: scale)
                    .rotation3DEffect(.degrees(-rev * revSpeed), axis: (x: 0, y: 0, z: 1), perspective: 0.1)
            Text("hjbjbj")
                .foregroundColor(isTouched ? .red : .white)
                .rotation3DEffect(.degrees(rev * revSpeed), axis: (x: 0, y: 0, z: 1), perspective: 0.1)
                .offset(x: offX, y: offY)
                .scaleEffect(x: scale, y: scale)
                .font(.system(size: (5.0 + (scale / 20))))
                .rotation3DEffect(.degrees(-rev * revSpeed), axis: (x: 0, y: 0, z: 1), perspective: 0.1)
                .opacity(displayText ? 1 : 0)
            
                
        }.onTapGesture {
            
            withAnimation{
                if displayText {
                    isTouched = true
                    isTapped = true
                    posIndexAstre = index
                    
                }
                
                //
                
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isTouched = false
            }
        }
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(posIndexAstre: 0)
    }
}
