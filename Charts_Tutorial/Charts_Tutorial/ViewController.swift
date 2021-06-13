//
//  ViewController.swift
//  Charts_Tutorial
//
//  Created by Antonella Campos Iannacone on 6/13/21.
//
import Charts
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LineChart: LineChartView!
    
    @IBOutlet weak var PieChart: PieChartView!
    
    @IBOutlet weak var BarChart: BarChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let data = [3,2,6,5,8,9,3,2,6,8,1,4,7,9,7,6,5,5,5,5]
        graphLineChart(dataArray: data)
        graphPieChart(dataArray: data)
        graphBarChart(dataArray: data)

    }
    
    func graphLineChart(dataArray: [Int]){
        //Make chart size ahave width and height both equal to width and size of screen
        LineChart.frame = CGRect(x:0,y:0, width: self.view.frame.size.width,height: self.view.frame.size.width/2)
        
        //make chart center to be center, but towards top screen
        LineChart.center.x = self.view.center.x
        LineChart.center.y = self.view.center.y - 240
        
        //when no data
        LineChart.noDataText = "No data available"
        LineChart.noDataTextColor = UIColor.black
        
        //
        var entries = [ChartDataEntry]()
        
        for i in 0..<dataArray.count{
            let value = ChartDataEntry(x: Double(i), y:Double(dataArray[i]))
            entries.append(value)
        }
    
        let dataSet = LineChartDataSet(entries: entries, label: "Line Chart")
        
        dataSet.colors = ChartColorTemplates.pastel()
        
        let data = LineChartData(dataSet: dataSet)
        LineChart.data = data
        
        LineChart.chartDescription?.text = "Pi values"
        
        LineChart.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
        
    }
    
    func graphPieChart(dataArray: [Int]){
        //Make chart size ahave width and height both equal to width and size of screen
        PieChart.frame = CGRect(x:0,y:0, width: self.view.frame.size.width,height: self.view.frame.size.width/2)
        
        //make chart center to be center, but towards top screen
        PieChart.center.x = self.view.center.x
        PieChart.center.y = self.view.center.y
        
        //when no data
        PieChart.noDataText = "No data available"
        PieChart.noDataTextColor = UIColor.black
        
        //
        var entries = [ChartDataEntry]()
        
        for i in 0..<dataArray.count{
            let value = ChartDataEntry(x: Double(i), y:Double(dataArray[i]))
            entries.append(value)
        }
    
        let dataSet = PieChartDataSet(entries: entries, label: "Pie Chart")
        
        dataSet.colors = ChartColorTemplates.pastel()
        
        let data = PieChartData(dataSet: dataSet)
        PieChart.data = data
        
        PieChart.chartDescription?.text = "Pi values"
        
        PieChart.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
        
    }
    
    func graphBarChart(dataArray: [Int]){
        //Make chart size ahave width and height both equal to width and size of screen
        BarChart.frame = CGRect(x:0,y:0, width: self.view.frame.size.width,height: self.view.frame.size.width/2)
        
        //make chart center to be center, but towards top screen
        BarChart.center.x = self.view.center.x
        BarChart.center.y = self.view.center.y + 240
        
        //when no data
        BarChart.noDataText = "No data available"
        BarChart.noDataTextColor = UIColor.black
        
        //
        var entries = [BarChartDataEntry]()
        
        for i in 0..<dataArray.count{
            let value = BarChartDataEntry(x: Double(i), y:Double(dataArray[i]))
            entries.append(value)
        }
    
        let dataSet = BarChartDataSet(entries: entries, label: "Bar Chart")
        
        dataSet.colors = ChartColorTemplates.pastel()
        
        let data = BarChartData(dataSet: dataSet)
        BarChart.data = data
        
        BarChart.chartDescription?.text = "Pi values"
        
        BarChart.animate(xAxisDuration: 2.0, yAxisDuration: 2.0, easingOption: .linear)
        
    }
    
    
    
    

}

