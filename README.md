# CounterTimer
Swift APP to show the count along with the seconds interval, with start, pause and reset buttons

------

Open Xcode and create a new project "CouterTimer"

NewProject --> Single Page Application 

Language : swift

--------------

Auto generated files once you created the project

AppDelegate.swift
ViewController.swift
Main.Storyboard

--------------

Goto Main.Storyboard

1. Select the View controller in storyboard (the selection will makes the view controller border blue)
2. In Attributes Inspector , select preferred size (iphone 4, 4.7, 5)
3. Drag the Table view from the Object library to the ViewController

--------------

UI Elements

  1. Navigation Bar (at the top of view controller) --> change the title to "Counter Timer"
  2. Label --> change the default to '0'
  3. Tool bar (at the bottom of view controller) --> Change the default Item to 'Play'
  4. Bar button Item --> Change it to "Pause"
  5. Bar button Item --> Change it to "Reset"
  6. Fixed space bar button Item --> you can 2 of these between these buttons
  
--------------

Create IBOutlets and actions for the elements

1. Enable Assistant Editor (which will open ViewController.swift)
2. Create @IBOutlet for UITableView by control+drag to the file from table view

    @IBOutlet weak var CounterLabel: UILabel!
    
3. Initialize the below variables

    var Counter : Int = 0 // Counter is start the conter 
    var Timer : NSTimer = NSTimer() // Initialize the Timer instance where we will use the second interval from it
4. Add the below statement in override func viewDidLoad()

    CounterLabel.text = String(Counter)

5. Add actions code the Play, Pause and Reset buttons
    
    @IBAction func StartCounter(sender: AnyObject) {
        Timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("UpdateCounter"), userInfo: nil, repeats: true)
    }
    
    // UpdateCounter is function to increment the counter and we call use this function in above StartCounter action
    func UpdateCounter(){
        CounterLabel.text = String(Counter++)
    }
    
    @IBAction func PauseCounter(sender: AnyObject) {
        Timer.invalidate()
    }
    
    @IBAction func ResetCounter(sender: AnyObject) {
        Timer.invalidate()
        Counter = 0
        CounterLabel.text = String(Counter)
    }


6. Save it and Run
