//
//  Topic.swift
//  project1
//
//  Created by Dmitriy Skorohodov on 05.09.2021.
//

import Foundation
import SwiftUI

func dateFromStr(_ str: String) -> Date? {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"
    return formatter.date(from: str)
}

struct Topic: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var goal: String
    var description: String
    var date: Date?
}

var topics: [Topic] = [
    Topic(id: 0,
      name: "Проектируем UI декларативно с SwiftUI. В чем отличия UIKit и SwiftUI",
      goal:
        """
        после занятия студент сможет:
        настроить окружение для работы на курсе и выполнения домашних заданий;
        использовать Xcode;
        создавать базовые интерфейсы на SwiftUI/Combine.
        """,
      description:
        """
        возможности и ограничения SwiftUI;
        property Wrappers: @State, @Binding, @ObservedObject и ObservableObject, @EnvironmentObject, @Environment;
        основы Combine: @Published;
        решение организационных вопросов;
        настройка environment: Xcode, git, scripts.
        """,
      date: dateFromStr("26.08.2021")),
    Topic(id: 1, name: "SwiftUI List, List с кастомным лейаутом, Hosting ViewControllers",
          goal:
            """
            после занятия студент сможет:
            понимать в каком состоянии приложение;
            добавлять логику на изменение состояния приложения;
            будет знать как устроен UIKit и его иерархия классов;
            делать навигацию в SwiftUI разными способами.
            """,
          description:
            """
            Life cycle приложения;
            UIResponder;
            SceneDelegate;
            Hosting ViewControllers и зачем они;
            Combine.
            """,
          date: dateFromStr("02.09.2021")),
    Topic(id: 2, name: "Использование NavigationView, TabView. Создание собственного стека Навигации",
          goal:
            """
            после занятия студент сможет:
            использовать NavigationView и TabView в SwiftUI;
            создавать собственный стек Навигации;
            использовать Transitions.
            """,
          description:
            """
            особенности навигации в SwiftUI;
            способы решения проблем с навигацией.
            """,
          date: dateFromStr("07.09.2021")),
    Topic(id: 3, name: "Отображение структурированных данных, List, пейджинг, кастомные компоненты на UIViewRepresentable",
          goal:
            """
            после занятия студент сможет:
            – реализовывать пейджинг на SwiftUI;
            – кодогенерить Network слой в ДЗ;
            – привязывать List к реальному API с помощью кодогенерации.
            """,
          description:
            """
            использование List в SwiftUI;
            реализация пейджинга для List.
            """,
          date: dateFromStr("09.09.2021")),
    Topic(id: 4, name: "Создание кастомных Shape, SwiftUI Drawing and Animation API",
          goal:
            """
            после занятия студент сможет:
            работать с CALayer и понимать систему координат используемую в CoreGraphics;
            программно рисовать Shapes в SwiftUI;
            использовать анимацию в SwiftUI.
            """,
          description:
            """
            разница CoreGraphics и Drawing API SwiftUI;
            создание кастомных фигур на Drawing API SwiftUI;
            анимация интерфейса в SwiftUI.
            """,
          date: dateFromStr("14.09.2021")),
    Topic(id: 5, name: "Необычная система типов Swift, структуры данных, Generics",
          goal:
            """
            после занятия студент сможет:
            создать кастомные структуры данных.
            """,
          description:
            """
            теория типов и Compound и Named типы;
            метатип и вложенные типы;
            protocol Composition;
            generics.
            """,
          date: dateFromStr("16.09.2021")),
    Topic(id: 6, name: "Связывание разных частей приложения Observing, Signals, Callbacks. PATs (Protocol with Associated Types)",
          goal:
            """
            после занятия вы сможете:
            работать с разными подходами связи сущностей в приложении:
            коллбеками , сигналами , классическим Observing.
            """,
          description:
            """
            observing и broadcasting, нужен ли нам KVO;
            плюсы и минусы Delegation, виды делегатов;
            callbacks;
            sgnals ans Slots и причем здесь Rx;
            PATs (Protocol with Associated Types).
            """,
          date: dateFromStr("21.09.2021")),
    Topic(id: 7, name: "Protocol Oriented Programming (POP), SOA, модуляризация, архитектурные Rx паттерны: Flux/Redux",
          goal:
            """
            после занятия вы сможете:
            применять паттерн Inversion of Control;
            использовать ServiceLocator;
            объяснить в чем польза слоистой архитектуры.
            """,
          description:
            """
            inversion of Control паттерн;
            serviceLocator и инжектинг;
            разделение архитектуры на слои и что это дает;
            модуляризация приложения, способы: Frameworks, SwiftPM;
            protocol Oriented Programming (POP);
            type constraints.
            """,
          date: dateFromStr("23.09.2021"))
]
