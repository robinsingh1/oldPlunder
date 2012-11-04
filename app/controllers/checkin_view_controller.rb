class CheckinViewController < UIViewController
    stylesheet :first

    layout :root do
        button = subview(UIButton.rounded_rect, :button,
            frame: [[10,10],[100,20]],
            title: "checkin!")
    end

end
