//
//  WeatherCardView.swift
//  Weather App
//
//  Created by Marlon D. Rocha on 07/01/24.
//

import UIKit

class WeatherCardView: UIView {
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: FontSize.font20)
        label.text = "Avaré"
        label.textAlignment = .center
        label.textColor = UIColor.primaryColor
    
        return label
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: FontSize.font70, weight: .bold)
        label.textColor = .white
        label.text = "25ºC"
        label.textAlignment = .left
        label.textColor = UIColor.primaryColor
        
        return label
    }()
    
    private lazy var weatherIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()

    init() {
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        setHierarchy()
        setConstraints()
    }
    
    private func setViewProperties() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.contrastColor
        self.layer.cornerRadius = Corner.corner20
    }
    
    private func setHierarchy() {
        addSubview(cityLabel)
        addSubview(temperatureLabel)
        addSubview(weatherIcon)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: Margin.margin16),
            cityLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Margin.margin16),
            cityLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Margin.margin16),
            cityLabel.heightAnchor.constraint(equalToConstant: 20),
            temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: Margin.margin12),
            temperatureLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: Margin.margin16),
            temperatureLabel.heightAnchor.constraint(equalToConstant: 71),
            weatherIcon.heightAnchor.constraint(equalToConstant: 86),
            weatherIcon.widthAnchor.constraint(equalToConstant: 86),
            weatherIcon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -Margin.margin16),
            weatherIcon.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor),
            weatherIcon.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: Margin.margin8)
        ])
    }
    
    func loadData(forecast: Forecast?, city: City) {
        if let forecastData = forecast {
            cityLabel.text = city.name
            
            temperatureLabel.text = forecastData.temp.toCelsius()
            weatherIcon.image = UIImage(named: forecastData.weather.first?.icon ?? "")
        }
    }
    
}
