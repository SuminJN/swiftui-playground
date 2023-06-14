import SwiftUI

struct SheetView: View {
    @State private var isSheetPresented = false

    var body: some View {
        Button("Show Sheet") {
            isSheetPresented = true
        }
        .sheet(isPresented: $isSheetPresented) {
            SheetContents()
        }
    }
}

struct SheetContents: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        Button("back") {
            dismiss()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
