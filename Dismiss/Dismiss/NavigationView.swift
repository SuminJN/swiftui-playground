import SwiftUI

struct NavigationView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Detail View") {
                DetailView()
            }
        }
    }
}

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button("back") {
            dismiss()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
