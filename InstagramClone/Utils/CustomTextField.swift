//
//  CustomTextField.swift
//  InstagramClone
//
//  Created by David Malicke on 10/5/21.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    var body: some View {
        ZStack(alignment:.leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(.black)
                    .padding(.leading, 40)
            }
            
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.black)
                    .padding(.trailing, 8)
                
                TextField("", text: $text)
                
            }
            .padding(.leading)
            
            
        }
        .frame(width: 360, height: 50)
        .background(
            ZStack {
                Color(.init(white:0.9, alpha: 0.7))
                    .cornerRadius(8)
                    .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color(.init(white: 0.7, alpha: 0.7)), lineWidth: 1) )
            }
        )
    }
}

struct CustomTextField_Previews: PreviewProvider {
    
    @State static var text = "test"
    
    static var previews: some View {
        CustomTextField(text: $text, placeholder: Text("test"), imageName: "envelope")
    }
}
