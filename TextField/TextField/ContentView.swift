import SwiftUI

struct ContentView: View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("사용자 이름", text: $userName)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                Button {
                    self.userName = ""
                } label: {
                    if self.userName.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                }
            }.padding(.bottom, 20)
            
            HStack {
                SecureField("비밀번호", text: $password)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10.0).strokeBorder(Color.black, style: StrokeStyle(lineWidth: 1.0)))
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                Button {
                    self.password = ""
                } label: {
                    if self.password.count > 0 {
                        Image(systemName: "multiply.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.secondary)
                    }
                }
            }.padding(.bottom, 5)
            
            Text("입력한 비밀번호: \(password)")
        }
        .padding(.horizontal, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
