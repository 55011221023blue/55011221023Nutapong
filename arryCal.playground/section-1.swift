class TipCalculator {
    
    //2
    let total: Double
    let taxPct: Double
    let subtotal:Double
    
    //3
    init(total:Double, taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        subtotal=total / (taxPct+1)
    }
    
    //4
    func calTipWithTipPct(tipPct:Double) -> Double{
        return subtotal * tipPct
    }
    
    //1
    func returnPossibleTips() ->[Int:Double]{
        let possibleTipInferred = [0.15, 0.18, 0.20]
        let possibleTipsExLicit:[Double] = [0.15, 0.18, 0.20]
        var number0fItem = possibleTipInferred.count
        
        //2
        var retval = [Int: Double]()
        for possibleTip in possibleTipInferred{
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calTipWithTipPct(possibleTip)
        }
        return retval
    }
    
    
}

//6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()










