//
//  WeekView.swift
//  WorkoutApp
//
//  Created by Janibek Voskanyan on 27.04.23.
//

import UIKit

final class WeekView: BaseView {
    
    private let calendar = Calendar.current
    
    private let stackView = UIStackView()
    
}

extension WeekView {
    override func addViews() {
        super.addViews()
        
        addView(stackView)
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
            
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        
        stackView.spacing = 7
        stackView.distribution = .fillEqually
        
        var weekdays = calendar.shortStandaloneWeekdaySymbols

        //MARK: - Bug:  works differently depending on the main language of the device, if the language is English everything works fine, if the language is Russian you need to change calendar.firstWeekday to 2 but in this case there is still one more bag
        if calendar.firstWeekday == 1 {
            let sun = weekdays.remove(at: 0)
            weekdays.append(sun)
        }
        
        weekdays.enumerated().forEach { index, name in
            
            let view = WeekdayView()
            view.configure(with: index, and: name)
            stackView.addArrangedSubview(view)
        }
    }
}
