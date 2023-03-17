import Foundation
import Capacitor

public struct GeoPoint {
    let lat: Double
    let lng: Double

    init(fromJSObject: JSObject) throws {
        guard let lat = fromJSObject["lat"] as? Double, let lng = fromJSObject["lng"] as? Double else {
            throw GoogleMapErrors.invalidArguments("LatLng object is missing the required 'lat' and/or 'lng' property")
        }

        self.lat = lat
        self.lng = lng
    }
}
