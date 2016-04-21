# Loop
Handle repetitive action in loop on iOS easily. With a **swifty** syntax.

# Before Loop

Before using **Loop**, you should create a "loop" using **NSTimer** like this :

```swift
override func viewDidLoad() {
  super.viewDidLoad()
        
  timer = NSTimer(timeInterval: 3, target: self, selector: #selector(ViewController.loopFunc), userInfo: nil, repeats: true)
  timer.fire()
}
    
func loopFunc() {
  NSLog("loop 2")
}
```

You will love the new way to handle that with **Loop** 🎉 :

# How to use

```swift
class ViewController: UIViewController {

  var loop: Loop!

  override func viewDidLoad() {
    super.viewDidLoad()

    loop = Loop(every: 5) {
      //Do stuff here !
      //You are currently in the MainThread
      NSLog("loop fired ! 🔥")
    }
  }
}
```

Pause a loop :

```swift
loop.pause()
```

Resume a loop :

```swift
loop.resume()
```

Stop a loop :

```swift
loop.stop()
```

Start or restart a stoped loop :

```swift
loop.start()
```
