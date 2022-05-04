//
//  BotResponse.swift
//  Adaptation
//
//  Created by Артем Буторин on 02.05.2022.
//

import Foundation

func getBotResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("привет") {
        return "Привет"
    } else if tempMessage.contains("hello") {
        return "Хэллоу"
    } else if tempMessage.contains("как дела") {
        return "Я отлично, а ты как?"
    } else if tempMessage.contains("пока") {
        return "Пока!"
    } else if tempMessage.contains("поговорим") {
        return "Давай пообщаемся!"
    } else if tempMessage.contains("прикольно") {
        return "Жиза!"
    } else if tempMessage.contains("что делаешь") {
        return "С тобой разговариваю"
    } else {
        return "Извините, тут я не могу ничего ответить, так как у меня довольно маленький словарный запас"
    }
    
//    switch tempMessage {
//    case "Привет" where tempMessage.contains("Привет"):
//        return "Привет!"
//    case "Hello" where :
//        return "Хэллоу"
//    case _ where tempMessage.contains("Как дела"):
//        return "Я отлично, а ты как?"
//    case _ where tempMessage.contains("Пока"):
//        return "Пока!"
//    case _ where tempMessage.contains("Поговорим"):
//        return "Давай пообщаемся!"
//    case _ where tempMessage.contains("Прикольно"):
//        return "Жиза!"
//    case _ where tempMessage.contains("Что делаешь"):
//        return "С тобой разговариваю"
//    default:
//        return "Извините, тут я не могу ничего ответить, так как у меня довольно маленький словарный запас"
//    }
}
