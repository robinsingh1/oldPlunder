class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    UINavigationBar.appearance.tintColor = 0x000000.uicolor 
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    first_controller = HomeViewController.new
    nav_ctlr = UINavigationController.alloc.initWithRootViewController(first_controller)
    nav_ctlr = setNavigationBarHidden(true)

    left       = WalletViewController.alloc.init
    left_nav   = UINavigationController.alloc.initWithRootViewController(left)
    left_nav.setNavigationBarHidden(true)
    
    right      = GiftCardViewController.alloc.init
    right_nav  = UINavigationController.alloc.initWithRootViewController(right)
    right_nav.setNavigationBarHidden(true)

    paper = PaperController.alloc.init(nav_ctlr)
    paper.set_left      left_nav,   270, 5
    paper.set_right     right_nav,  270, 5
    
    @window.backgroundColor = 0x000000.uicolor
    @window.rootViewController=paper
    @window.makeKeyAndVisible
    true
  end
end
