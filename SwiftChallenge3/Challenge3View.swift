//
//  Challenge3View.swift
//  SwiftChallenge3
//
//  Created by 芥川浩平 on 2024/01/03.
//

import SwiftUI

struct Challenge3Profile: Identifiable {
    let id = UUID()
    var name: String
    var age: Int
}

struct Challenge3View: View {
    let users: [Challenge3Profile] = (1...100).map {
        Challenge3Profile(name: "ユーザー\($0)", age: $0)
    }
    var body: some View {
        ScrollView {
            ForEach(users) { user in
                HStack() {
                    Text("名前: \(user.name)")
                    Spacer()
                    Text("年齢: \(user.age)")
                }
                .frame(height: 60)
                .padding(.horizontal, 32)
            }
        }
    }
}

#Preview {
    Challenge3View()
}
