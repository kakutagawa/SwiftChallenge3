//
//  Challenge1View.swift
//  SwiftChallenge3
//
//  Created by 芥川浩平 on 2024/01/03.
//

import SwiftUI

struct Challenge1View: View {
    @State private var isSunTapped = false
    @State private var isCloudTapped = false
    @State private var isRainTapped = false

    var body: some View {
        VStack {
            HStack(spacing: 48) {
                VStack {
                    Button {
                        isSunTapped = true
                    } label: {
                        Image(systemName: "sun.min.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:48, height: 48)
                            .foregroundStyle(isSunTapped == true ? .orange : .black)
                    }
                    if isSunTapped {
                        Text("晴れ")
                    }
                }
                VStack {
                    Button {
                        isCloudTapped = true
                    } label: {
                        Image(systemName: "cloud.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:48, height: 48)
                            .foregroundStyle(isCloudTapped == true ? .gray : .black)
                    }
                    if isCloudTapped {
                        Text("曇り")
                    }
                }
                VStack {
                    Button {
                        isRainTapped = true
                    } label: {
                        Image(systemName: "cloud.heavyrain.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:48, height: 48)
                            .foregroundStyle(isRainTapped == true ? .blue : .black)
                    }
                    if isRainTapped {
                        Text("雨")
                    }
                }
            }
        }
        Button {
            isSunTapped = false
            isCloudTapped = false
            isRainTapped = false
        } label: {
            Text("リセット")
        }
    }
}

#Preview {
    Challenge1View()
}
