# Classes BoilerPlateCode
All Code is written and compatible with Swift 3 | Xcode 8 |iOS10
 * Fields
 * Steppers
 * Labels
 * PickerWheel
 * Switches
 * Buttons
 * Images

### Example Fields Class:

```swift
var textfield : FormTextField = FormTextField()
textField = Fields().createTextField(previousFrame: self.emailAddress.frame, placeholder: "TextField: ", inputType: .Default)

var userName : FormTextField = FormtTextField()
userName = Fields().createUsernameTextField(x: 20, y: 60, width: self.view.frame.width - 40, height: 45)

var password : FormTextField = FormTextField()
password = Fields().createPasswordTextField(previousFrame: self.userName.frame)

```
~Fields class uses cocoapod FormTextField. Make Sure you have installed it before using this class

### Example Steppers Class:

```swift
var frequencyStepper : UIStepper = UIStepper()
frequencyStepper = Steppers().createSteppers(_x: CGFloat(0), _y: CGFloat(60), _width: (margin * 2.0), _height: 80 , minValue: 0, maxValue: 100)
```

### Examples From Labels Class:
```swift
var label :  UILabel  = UILabel()
label = Labels().createTitleLabel(_x: 15 , _y: 60, _width: (self.view.frame.width - 30), _height: self.height, _label: "Label", _fontColor: .green, _fontSize: (24.0), _backgroundColor: .clear, _center: self.view.center)
```
### Examples From PickerWheel Class:
```swift
var wheel : UIDatePickerWheel = UIDatePickerWheel()
wheel = PickerWheel().createDatePicker(_x: CGFloat(0), _y: CGFloat(100), _width: CGFloat(300), _height: CGFloat(400))
```
### Examples From Switches Class:
```swift
var switch : UISwitch = UISwitch()
switch = Switches().binarySwitch(_x: CGFloat(10.0), _y: CGFloat(80.0) , _width: 15.0, _height: 15.0, switchState: false)
```

### Examples From Button Class
```swift
var signUpButton = UIButton : UIButton()
signUpButton = Buttons().createButton(_x: 0, _y: (self.view.frame.maxY + 100, _width: (self.view.frame.width), _height: CGFloat(60), _title: "Sign Up", _backgroundcolor: .green , _fontcolor: .white)
signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)
```

### Examples From Images Class

```swift
var imageView : UIImageView = UIImageView()
imageView = Images().placeImage(_x: CGFloat(10.0), _y: CGFloat(70.0), _width: (self.view.frame.width - (30 * 2.0)), _height: (self.view.frame.height / 4), _image: "test_img")

```

