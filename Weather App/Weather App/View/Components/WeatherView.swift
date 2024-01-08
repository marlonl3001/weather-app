//
//  WeatherView.swift
//  Weather App
//
//  Created by Marlon D. Rocha on 05/01/24.
//

import SwiftUI

//struct WeatherView: View {
//    @ObservedObject var viewModel: WeatherViewModel
//    
//    
//    var body: some View {
//        //UITableView.appearance().backgroundColor = UIColor.black
//        ZStack {
//            
//            Image(.backgroundDay)
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
//                .edgesIgnoringSafeArea(.all)
//            
//            VStack {
//                if let forecast = viewModel.forecastResponse {
//                    WeatherheaderView(forecast: forecast.current, city: viewModel.city)
//                    
//                    Text("PREVISÃO POR HORA")
//                        .frame(height: 84)
//                        .foregroundStyle(Color(uiColor: UIColor.contrastColor ?? .white))
//                        .font(.system(size: 14, weight: .semibold))
//                    
////                    ForEach(forecast.hourly, id: \.dt) { hourly in
////                        HourlyForecastView(hourlyForecast: hourly)
////                    }.listRowBackground(.clear)
//                    HourlyForecastView(hourlyForecast: forecast.hourly)
//                    
//                    List {
////                        Section(header: Text("Previsão por hora")) {
////                            
////                        }.background(.clear)
//                        
//                        Section(header: Text("Próximos dias")) {
//                            DailyForecastView(dailyForecast: forecast.daily)
//                        }.background(.clear)
//                    }
//                    .background(.clear)
//                } else if let errorMessage = viewModel.errorMessage {
//                    Text(errorMessage)
//                        .foregroundStyle(.red)
//                } else {
//                    ProgressView()
//                }
//            }
//            .background(.clear)
//            .onAppear {
//                //viewModel.fetchData()
//            }
//            
//        }
//    }
//}
//
//struct WeatherheaderView: View {
//    let forecast: Forecast
//    let city: City
//    
//    var body: some View {
//        VStack {
//            Text(city.name)
//                .font(.system(size: 20))
//                .foregroundStyle(Color(uiColor: UIColor.primaryColor ?? .white))
//                .padding(.top)
//                .frame(height: 20)
//            
//            HStack {
//                Text(forecast.temp.toCelsius())
//                    .font(.system(size: 70, weight: .bold))
//                    .foregroundStyle(Color(uiColor: UIColor.primaryColor ?? .white))
//                
//                Image(forecast.weather.first?.icon ?? "")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 86, height: 86)
//                    .padding(.init(top: 0, leading: 18, bottom: 0, trailing: -8))
//            }
//        }
//        .frame(maxWidth: .infinity)
//        .background(Color(uiColor: UIColor.contrastColor ?? .white))
//        .cornerRadius(20)
//        .padding(EdgeInsets(top: 60, leading: 35, bottom: 0, trailing: 35))
//    }
//}
//
//struct HourlyForecastView: View {
//    let hourlyForecast: [Forecast]
//    
//    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(hourlyForecast, id: \.dt) { forecast in
//                    HourlyForecastItemView(forecast: forecast)
//                }
//            }.background(.clear)
//        }.listRowBackground(Color.clear)
//    }
//}
//
//struct HourlyForecastItemView: View {
//    let forecast: Forecast
//    
//    var body: some View {
//        VStack(alignment: .center, content: {
//            Text(forecast.dt.toHourFormat())
//                .padding(.top, 8)
//                .padding(.horizontal, 12)
//            Image(systemName: forecast.weather.first?.icon ?? "questionmark")
//                .frame(height: 33)
//            Text(forecast.temp.toCelsius())
//                .padding(.bottom, 8)
//                .padding(.horizontal, 12)
//        })
//        .frame(maxWidth: .infinity)
//        .overlay( /// apply a rounded border
//            RoundedRectangle(cornerRadius: 20)
//                .stroke(Color(uiColor: UIColor.contrastColor ?? .white), lineWidth: 1)
//        )
//        .padding(.leading, 8)
//    }
//}
//
//struct DailyForecastView: View {
//    let dailyForecast: [DailyForecast]
//    
//    var body: some View {
//        ForEach(dailyForecast, id: \.dt) { forecast in
//            DailyForecastItemView(forecast: forecast)
//        }
//    }
//}
//
//struct DailyForecastItemView: View {
//    let forecast: DailyForecast
//    
//    var body: some View {
//        HStack {
//            Text(forecast.dt.toWeekdayName().uppercased())
//            Spacer()
//            Image(systemName: forecast.weather.first?.icon ?? "questionmark")
//            Spacer()
//            Text("Min: \(forecast.temp.min.toCelsius()) | Max: \(forecast.temp.max.toCelsius())")
//        }
//    }
//}
//
//struct WeatherView_Previews: PreviewProvider {
//    static var previews: some View {
//        let viewModel = WeatherViewModel()
//        return WeatherView(viewModel: viewModel)
//    }
//}
