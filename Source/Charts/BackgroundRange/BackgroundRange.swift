import Foundation
import CoreGraphics

open class BackgroundRange: NSObject
{
    fileprivate var _color = NSUIColor.white
    
    fileprivate var _lowerThreshold = CGFloat.nan
    
    fileprivate var _higherThreshold = CGFloat.nan
    
    public override init()
    {
        super.init()
    }
    
    @objc public init(
        color: NSUIColor,
        lowerThreshold: CGFloat,
        higherThreshold: CGFloat)
    {
        super.init()
        
        _color = color
        _lowerThreshold = lowerThreshold
        _higherThreshold = higherThreshold
    }
    
    @objc open var color: NSUIColor { return _color }
    @objc open var lowerThreshold: CGFloat { return _lowerThreshold }
    @objc open var higherThreshold: CGFloat { return _higherThreshold }
  
    // MARK: NSObject
    
    open override var description: String
    {
        return "BackgroundRange, color: \(_color), lowerThreshold: \(_lowerThreshold), higherThreshold: \(_higherThreshold)"
    }
}

// MARK: Equatable
extension BackgroundRange /*: Equatable*/ {
    open override func isEqual(_ object: Any?) -> Bool {
        guard let object = object as? BackgroundRange else { return false }

        if self === object
        {
            return true
        }

        return _color == object._color
            && _lowerThreshold == object._lowerThreshold
            && _lowerThreshold == object._lowerThreshold
    }
}
