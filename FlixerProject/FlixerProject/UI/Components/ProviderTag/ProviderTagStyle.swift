import SwiftUI

/// Describes the provider name, logo and color
enum ProviderTagStyle: CaseIterable {
    /// Netflix
    case netflix
    /// Disney Plus
    case displeyPlus
    /// Prime Video
    case primeVideo
    /// Claro TV
    case claroTv
    /// Paramount+
    case paramountPlus
    /// Max
    case max
    /// Apple TV+
    case appleTvPlus
    /// Globoplay
    case globoplay
    /// Crunchyroll
    case crunchyroll
    /// Pluto TV
    case plutotv
    /// Telecine
    case telecine
    /// Generic name
    case generic(name: String)

    var name: String {
        switch self {
        case .netflix:
            return "Netflix"
        case .displeyPlus:
            return "Display+"
        case .primeVideo:
            return "Prime Video"
        case .claroTv:
            return "Claro TV"
        case .paramountPlus:
            return "Paramount+"
        case .max:
            return "Max"
        case .appleTvPlus:
            return "Apple TV+"
        case .globoplay:
            return "Globoplay"
        case .crunchyroll:
            return "Crunchyroll"
        case .plutotv:
            return "Pluto TV"
        case .telecine:
            return "Telecine"
        case .generic(let name):
            return name
        }
    }

    var image: ImageResource? {
        switch self {
        case .netflix:
            return .Provider.netflix
        case .displeyPlus:
            return .Provider.disneyPlus
        case .primeVideo:
            return .Provider.primeVideo
        case .claroTv:
            return .Provider.claro
        case .paramountPlus:
            return .Provider.paramountPlus
        case .max:
            return .Provider.max
        case .appleTvPlus:
            return .Provider.appleTV
        case .globoplay:
            return .Provider.globoplay
        case .crunchyroll:
            return .Provider.crunchyroll
        case .plutotv:
            return .Provider.plutoTV
        case .telecine:
            return .Provider.telecine
        default:
            return nil
        }
    }

    var color: Color {
        switch self {
        case .netflix:
            return .Provider.netflix
        case .displeyPlus:
            return .Provider.disneyPlus
        case .primeVideo:
            return .Provider.primeVideo
        case .claroTv:
            return .Provider.claro
        case .paramountPlus:
            return .Provider.paramountPlus
        case .max:
            return .Provider.max
        case .globoplay:
            return .Provider.globoplay
        case .crunchyroll:
            return .Provider.crunchyroll
        case .telecine:
            return .Provider.telecine
        case .generic:
            return .dsGray
        default:
            return .dsWhite
        }
    }

    static var allCases: [ProviderTagStyle] = [
        .netflix, 
        .displeyPlus,
        .primeVideo,
        .claroTv,
        .paramountPlus,
        .max,
        .appleTvPlus,
        .globoplay,
        .crunchyroll,
        .plutotv,
        .telecine,
        .generic(name: "Generic")
    ]
}
