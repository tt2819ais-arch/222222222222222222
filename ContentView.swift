import SwiftUI

struct ContentView: View {
    @State private var status = "Ожидание игры..."
    @State private var isInjecting = false
    
    var body: some View {
        ZStack {
            // Фон: Градиент как на фото
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.6), Color.purple.opacity(0.6), Color.orange.opacity(0.3)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                // Шапка с инфой
                VStack {
                    Text("Версия iOS: 26.3")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.white.opacity(0.8))
                    Text("iPhone 15 Pro Max")
                        .font(.system(size: 12))
                        .foregroundColor(.white.opacity(0.6))
                }
                .padding(.top, 20)
                
                Spacer()
                
                // Лого и Название
                VStack(spacing: 10) {
                    Image(systemName: "shield.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(.linearGradient(colors: [.white, .green], startPoint: .top, endPoint: .bottom))
                    
                    Text("GOTBREACH")
                        .font(.system(size: 32, weight: .black, design: .rounded))
                        .tracking(2)
                        .foregroundColor(.white)
                    
                    Text("INJECTOR v1.0")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.green)
                }
                
                Text("Нажмите кнопку ниже, чтобы начать.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white.opacity(0.9))
                    .padding(.horizontal, 40)

                // Кнопка НАЧАТЬ (Glass Style)
                Button(action: {
                    startInjection()
                }) {
                    HStack {
                        Image(systemName: "arrow.up.right")
                        Text("НАЧАТЬ")
                    }
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 280, height: 70)
                    .background(
                        ZStack {
                            RoundedRectangle(cornerRadius: 35)
                                .fill(Color.white.opacity(0.1))
                            RoundedRectangle(cornerRadius: 35)
                                .stroke(LinearGradient(colors: [.white.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                        }
                    )
                    .shadow(color: .blue.opacity(0.3), radius: 20, x: 0, y: 10)
                }
                .disabled(isInjecting)

                // Статус-бар
                VStack {
                    if isInjecting {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: .white))
                            .scaleEffect(1.5)
                    }
                    Text(status)
                        .font(.system(size: 16, design: .monospaced))
                        .foregroundColor(isInjecting ? .yellow : .white.opacity(0.7))
                        .padding(.top, 10)
                }
                .frame(height: 100)

                Spacer()
                
                Text("Authorized by p12 Certificate")
                    .font(.caption2)
                    .foregroundColor(.white.opacity(0.4))
            }
        }
    }

    func startInjection() {
        isInjecting = true
        status = "Поиск процесса..."
        
        // Эмуляция работы
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            status = "Инъекция в Black Russia..."
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                status = "ГОТОВО! Меню активно."
                isInjecting = false
            }
        }
    }
}
