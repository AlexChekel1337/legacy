// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation
import CoreGraphics
import Legacy

// swiftlint:disable line_length type_name function_body_length identifier_name
struct UserCompanyLightTransformer: LightTransformer {
    typealias T = User.Company

    let nameName = "name"
    let catchPhraseName = "catchPhrase"
    let bsName = "bs"

    let nameTransformer = CastLightTransformer<String>()
    let catchPhraseTransformer = CastLightTransformer<String>()
    let bsTransformer = CastLightTransformer<String>()

    func from(any value: Any?) -> T? {
        guard let dictionary = value as? [String: Any] else { return nil }

        guard let name = nameTransformer.from(any: dictionary[nameName]) else { return nil }
        guard let catchPhrase = catchPhraseTransformer.from(any: dictionary[catchPhraseName]) else { return nil }
        guard let bs = bsTransformer.from(any: dictionary[bsName]) else { return nil }

        return T(
            name: name,
            catchPhrase: catchPhrase,
            bs: bs
        )
    }

    func to(any value: T?) -> Any? {
        guard let value = value else { return nil }

        var dictionary: [String: Any] = [:]
        dictionary[nameName] = nameTransformer.to(any: value.name)
        dictionary[catchPhraseName] = catchPhraseTransformer.to(any: value.catchPhrase)
        dictionary[bsName] = bsTransformer.to(any: value.bs)
        return dictionary
    }
}
// swiftlint:enable line_length type_name function_body_length identifier_name
