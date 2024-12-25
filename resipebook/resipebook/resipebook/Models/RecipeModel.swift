//
//  RecipeModel.swift
//  resipebook
//
//  Created by iMac-7 on 10/12/24.
//
import  Foundation

enum Category: String, CaseIterable, Identifiable {
    var  id: String {self.rawValue}
    case breakfast = "Завтраки"
    case soup = "Супы"
    case salad = "Салаты"
    case appetizer = "Закуски"
    case dishes = "Основные блюда"
    case sandwich = "Сендвичи, пиццы, пасты"
    case dessert = "Десерты"
    case drink = "Напитки"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let portions: String
    let ingredients: String
    let directions: String
    let category: Category
    let cookingTime:String
    let datePublished: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe (name: "Сэндвичи с яйцом и огурцом",
                image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fm.povar.ru%2Frecipes%2Fangliiskii_sendvich_s_ogurcom_i_yaicom-83163.html&psig=AOvVaw1RnJvfWcz8CxezlGVP6n1Z&ust=1733908208663000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOjImcntnIoDFQAAAAAdAAAAABAE",
                portions: "4 порции",
                ingredients: "Огурцы - 500 г\nХлеб для тостов - 8 кусков\nКуриное яйцо - 3 штуки\nНатуральный йогурт - 1 столовая ложка\nМайонез - 1 столовая ложка\nГорчица - 1 столовая ложка\nЗеленый лук - 2 штуки\nСоль - по вкусу",
                directions: "1. Яйца отварить вкрутую, залить холодной водой, очистить, полностью остудить и нарезать мелким кубиком.\n2. С огурцов снять овощечисткой кожу и выбросить. Затем продолжать снимать мякоть тонкими «ленточками», не доходя до сердцевины.\n3. Выложить «ленточки» из огурцов в дуршлаг, чтобы стекла жидкость. Немного посолить огурцы, чтобы стекла лишняя влага.\n4. Перемешать майонез, йогурт, горчицу и рубленый зеленый лук. Заправить этим соусом яйца.\n5. На половину хлебных ломтиков выложить в один слой «ленточки» из огурца немного внахлест, чтобы между ними не оставалось пробелов. На слой огурца выложить яичную массу и разровнять. Массы должно быть не очень много, но и не мало — слой примерно в 3 мм.\n6. Накрыть сэндвичи оставшимися кусками хлеба. Острым ножом обрезать у сэндвичей корки, затем нарезать их на треугольники, два раза разрезав по диагонали.",
                category: Category.sandwich,
                cookingTime: "20 минут",
                datePublished: "2024-11-10"),
                
        Recipe(name: "Сырники",
               image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fprostokvashino.ru%2Frecipes%2Fpp-syrniki%2F&psig=AOvVaw09Uz9jHmFvethNtTJH5M_3&ust=1733903616259000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMj277vcnIoDFQAAAAAdAAAAABAE",
               portions: "4 порции",
               ingredients: "Творог - ½ кг\nКуриное яйцо - 1 штука\nСахар - 1 столовая ложка\nПшеничная мука - ½ стакана",
               directions: "1. Смешать все ингредиенты.\n2. Из полученного теста скатать колбаску, нарезать на тонкие кружочки.\n3. Обвалять будущие сырники в муке.\n4. Обжарить на растительном масле по 2–3 минуты с каждой стороны до золотистого цвета.",
               category: Category.breakfast,
               cookingTime: "30 минут",
               datePublished: "2024-11-11"),
        Recipe(name: "Крем-суп из тыквы",
               image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fmenunedeli.ru%2Frecipe%2Ftykvennyj-sup-s-syrom%2F&psig=AOvVaw1ZxE2hy8YKjuGvREf0kZwf&ust=1733904574793000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCOCq44PgnIoDFQAAAAAdAAAAABAE",
               portions: "6 порции",
               ingredients: "Молотый черный перец - по вкусу\nСоль - по вкусу\nОчищенные семена тыквы - 50 г\nСахар, 2 столовые ложки\nПетрушка - 20 г\nСливки - 200 мл\nБренди - 50 мл\nСливочное масло - 100 г\nЧеснок - 6 зубчиков\nКрасный лук - 1 головка\nТыква - 1 кг\nКуриный бульон - 1 л",
               directions: "1. Мелко нарубить красный лук и чеснок и обжарить в глубоком сотейнике на сливочном масле. Сначала лук, а когда он станет мягким — чеснок. Чеснок жарится только до появления сильного аромата — не дольше. Пережаренный чеснок — горчит.\n2. Дальше нужно высыпать в сотейник нарезанную мелкими кубиками мякоть тыквы и обжарить ее вместе с луком и чесноком, следя за тем, чтобы ничего не подгорело и постоянно помешивая всю компанию.\n3. Как только тыква немного размягчится, что легко определить простым нажатием ложки, влить на сковороду бренди и жарить еще минут пять, пока алкоголь не выпарится.\n4. Затем нужно залить содержимое сотейника куриным бульоном, добавить перец, соль, сахар и еще 5–7 минут поварить. \n5. Получившуюся кашу разбить в блендере вместе с нежирными сливками, петрушкой (предварительно нарезав ее). Подавать с обжаренными на сухой сковороде очищенными тыквенными семечками.",
               category: Category.soup,
               cookingTime: "30 минут",
               datePublished: "2024-11-12"),
        Recipe(name: "Салат «Цезарь»",
               image: "https://www.gastronom.ru/recipe/23698/salat-cezar-s-kuricej",
               portions: "6 порции",
               ingredients: "Яичный желток - 2 штуки\nЧеснок - 1 зубчик\nВустерширский соус - 1 чайная ложка\nЛимонный сок - 30 мл\nФранцузский багет - 75 г\nСалат романо - 1 штука\nСыр пармезан - 50 г\nРастительное масло - 100 мл\nОливковое масло - 70 мл\nСоль - по вкусу\nМолотый черный перец - по вкусу",
               directions: "1. Подготовить необходимые ингредиенты.\n2. Измельчить чеснок до состояния пасты.\n3. В большой чаше соединить чеснок и желтки.\n4. Добавить ворчестерский соус, лимонный сок и щепотку соли.\n5. Постоянно взбивая, постепенно влить сначала 30 мл оливкового масла, затем растительное.\n6. Хлеб нарезать крупным кубиком.\n7. Переложить хлеб на противень, сбрызнуть оливковым маслом, посолить, поперчить и отправить в духовку, разогретую до 180 градусов, на 10-15 минут.\n8. Салат помыть, разобрать на листья, крупные листья можно разорвать на 2-3 части.\n9. Аккуратно руками перемешать салат с соусом.\n10. Выложить листья на тарелку, сверху положить крутоны и посыпать тертым пармезаном.",
               category: Category.salad,
               cookingTime: "20 минут",
               datePublished: "2024-11-13"),
        Recipe(name: "Апельсиновый сок",
               image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.yamdiet.com%2Fblog%2Fvse-o-zdorovoy-pishche%2Fapelsinovyj-fresh-kak-chasto-mozhno-pit-i-polza%2F&psig=AOvVaw3p1uSJB02cnlgYU7EZDE_Z&ust=1733905695001000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLjxy5nknIoDFQAAAAAdAAAAABAH",
               portions: "12 порции",
               ingredients: "Сахар - 250 г\nАпельсины - 1 штука\nЛимонная кислота - 7 г\nВода - 2250 мл",
               directions: "1. Апельсин вымыть, ошпарить кипятком, чтобы убрать горечь, вытереть насухо и положить в морозилку на 3–4 часа, а лучше — на ночь. Можно предварительно разрезать на 4 части.\n2. Апельсин достать из морозилки и прокрутить через мясорубку или в комбайне.\n3. Полученную массу залить 750 мл кипяченой воды и дать настояться 10 минут.\n4. Все процедить через дуршлаг, затем через 4 слоя марли.\n5. В процеженный сок добавить 250 грамм сахара, 7 грамм лимонной кислоты и оставшиеся 1500 мл воды.\n6. Перелить в стеклянную емкость, настоять час и можно пробовать.",
               category: Category.drink,
               cookingTime: "30  минут + 8 часов",
               datePublished: "2024-11-10"),
        Recipe(name: "Пибимпап (корейское блюдо)",
               image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fru.freepik.com%2Fpremium-photo%2Fbibimbap-wooden-background-traditional-korean-dish-top-view_22609605.htm&psig=AOvVaw3Uup-rWASXLyu9R3CTAK9s&ust=1733905822715000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPjBhtjknIoDFQAAAAAdAAAAABAE",
               portions: "1 порции",
               ingredients: "Папоротник - 30 г\nМорковь - 30 г\nКуриное яйцо - 1 штука\nШпинат - 30 г\nРис - 50 г\nСоевые бобы - 30 г\nСоевый соус - 10 мл\nКабачки - 30 г\nЖареный кунжут - 1 г\nГовядина - 40 г\nЧеснок - 3 зубчика",
               directions: "1. Поставить вариться рис\n2. Кабачок, мясо и морковь нарезать соломкой. По отдельности обжарить.\n3. Отварить сою. Заправить соевым соусом и мелко нарезанным чесноком.\n4. Сделать со шпинатом то же самое, что и с соей.\n5. Обжарить яйцо. Отрезать от яичницы лишнее — должен получиться круг.\n6. В глубокую тарелку выложить сваренный рис, на него выложить мясо и овощи порциями вокруг риса. Сверху выложить яйцо.\n7. Посыпать кунжутом. Блюдо готово, можно подавать к столу.",
               category: Category.dishes,
               cookingTime: "40 минут",
               datePublished: "2024-11-14"),
        Recipe(name: "Бисквит",
               image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.koolinar.ru%2Frecipe%2Fview%2F132069&psig=AOvVaw0sK_rNsXChZkKToW_vk_kn&ust=1733906394011000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPi1tu3mnIoDFQAAAAAdAAAAABAE",
               portions: "4 порции",
               ingredients: "Пшеничная мука - 1 стакан\nСахар - 1 стакан\nКуриное яйцо - 2 штуки\nУксус - ½ чайные ложки\nСода - ½ чайные ложки\nВанилин - по вкусу",
               directions: "1. Яйца взбить с сахаром, добавить муку, соду, погашенную уксусом, и ванилин. Все хорошо перемешать. \n2. Выложить тесто в смазанную маслом форму и выпекать в течение 30 минут в разогретой до 180 градусов духовке.",
               category: Category.dessert,
               cookingTime: "30 минут",
               datePublished: "2024-11-15")
    ]
}
