//
//  Challenge2View.swift
//  SwiftChallenge3
//
//  Created by 芥川浩平 on 2024/01/03.
//

import SwiftUI

class Profile: ObservableObject {
    let name = "こうへい"
    @Published var age = 25

    func happyBirthday() {
        age += 1
    }
}

struct Challenge2View: View {
    @ObservedObject private var profile = Profile()

    var body: some View {
        VStack {
            Text("名前： \(profile.name)")
            Text("年齢： \(profile.age)歳")
            Button {
                profile.happyBirthday()
            } label: {
                Image(systemName: "birthday.cake.fill")
                Text("誕生日")
            }
        }
    }
}

#Preview {
    Challenge2View()
}
