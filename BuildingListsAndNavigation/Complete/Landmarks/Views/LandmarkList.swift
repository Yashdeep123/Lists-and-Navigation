/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI


struct LandmarkList: View {
    @State private var showFavouritesOnly = true
    

    var body: some View {
        VStack
        {
            
            NavigationView {
                
                List(landmarks)
                {
                   landmark in
                    NavigationLink(destination: LandmarkDetail(landmark:landmark))
                    {
                        LandmarkRow(landmark: landmark)
                    }
                
                }
                .navigationTitle("Landmarks")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
