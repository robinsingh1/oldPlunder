class HomeViewController < UIViewController
    stylesheet :first

    def init
        super.tap do
            self.title = "First"
        end
        bounds = view.bounds.size

        view.setFrame([[0,0],[bounds.width,200]])
    
        trozo                 = UIView.alloc.initWithFrame([[0,0],[bounds.width,bounds.height]])
        trozo.backgroundColor = 0xFFFFFF.uicolor

        view << trozo
        self
    end

    layout :root do
        button = subview(UIButton.rounded_rect, :button,
            frame: [[10,10],[100,20]],
            title: "Hi!")
        
        button.on :touch do
            view.slide :left
            #self.navigationController << CheckinViewController.new
        end
    end
end
