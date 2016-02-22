
#import <UIKit/UIKit.h>

@interface INSignatureView : UIView

{
    UILabel *signatureLabel;
    CAShapeLayer *shapeLayer;
    UIImage *incrImage;
    IBInspectable NSString *placeholderText;
    IBInspectable UIColor *signatureColor;
    IBInspectable NSUInteger signatureWidth;
}

- (UIImage *)getSignatureImage;
- (void)clearSignature;
@end
