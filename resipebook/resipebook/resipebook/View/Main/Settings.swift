//
//  Settings.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//
import SwiftUI

struct Settings: View {
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false  // Переменная для хранения выбора темы
    
    var body: some View {
        NavigationView {  // Обернули в NavigationView
            Form {
                Section(header: Text("Внешний вид")) {  // Изменили на русский
                    Toggle("Темный режим", isOn: $isDarkMode)  // Перевели на русский
                        .onChange(of: isDarkMode) { newValue in
                            // При изменении переключателя тема меняется автоматически
                            // Используем AppStorage, чтобы сохранять значение
                        }
                }
            }
            .navigationTitle("Настройки")  // Заголовок для страницы
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some  View {
        Settings()
    }
}

