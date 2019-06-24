import UIKit

extension UIView {
    
    public var x: CGFloat{
        get{
            return self.frame.origin.x
        }
        set{
            var r = self.frame
            r.origin.x = newValue
            self.frame = r
        }
    }
    
    public var y: CGFloat{
        get{
            return self.frame.origin.y
        }
        set{
            var r = self.frame
            r.origin.y = newValue
            self.frame = r
        }
    }
    
    
    public var left: CGFloat{
        
        get {
            return self.frame.origin.x
        }
        set{
            
            var r = self.frame
            r.origin.x = newValue
            self.frame = r
        }
        
    }
    
    
    public var right: CGFloat{
        
        get {
            return self.frame.origin.x + self.frame.size.width
        }
        set{
            
            var r = self.frame
            r.origin.x = newValue - r.size.width
            self.frame = r
        }
        
    }
    
    public var top: CGFloat{
        
        get {
            return self.frame.origin.y
        }
        set{
            
            var r = self.frame
            r.origin.y = newValue
            self.frame = r
        }
        
    }
    
    
    public var bottom: CGFloat{
        
        get {
            return self.frame.origin.y+self.frame.size.height
        }
        set{
            
            var r = self.frame
            r.origin.y = newValue - self.frame.size.height
            self.frame = r
        }
        
    }
    
    public var width: CGFloat{
        
        get {
            return self.frame.size.width
        }
        set{
            
            var r = self.frame
            r.size.width = newValue
            self.frame = r
        }
        
    }
    
    public var height: CGFloat{
        
        get {
            return self.frame.size.height
        }
        set{
            
            var r = self.frame
            r.size.height = newValue
            self.frame = r
        }
        
    }
    
    /// 移除view的所有内部控件
    func removeAllSubviews()  {
        
        for  view in self.subviews {
            view.removeFromSuperview()
        }
        
    }
    
    /// 隐藏view的所有内部控件
    func hidenAllSubviews(hiden : Bool) {
        
        for  view in self.subviews {
            view.isHidden = hiden
        }
        
    }
    
    /// 获取view所在的ViewController
    var currentViewController : UIViewController?{
        get{
            var next = self.next
            
            while next != nil {
                if (next?.isKind(of: UIViewController.classForCoder()))!{
                    return (next as! UIViewController)
                }
                next = next?.next
            }
            
            return nil
        }
    }
    
    /// 根据xib获取view
    class func viewFromXib() -> UIView {
        
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?.first as! UIView
    }
    
    /// 获取view名称
    static var name : String {
        get{
            return String(describing: self.classForCoder())
        }
    }
}
