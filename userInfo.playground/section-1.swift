// Playground - noun: a place where people can play

class userINFO {
    var user:String
    var pass:String
    var userinfo = Dictionary<String, String>()
    
    init (user:String,pass:String){
        self.user = user
        self.pass = pass
    }
    
    func creck() ->Bool{
        
        userinfo = ["u001":"123456","u002":"00023","u003":"zaqxsw"]
        if(userinfo[user]==pass){
            return true
        }else{
            return false
        }
    }
    func update_user_info() ->String{
       
        userinfo[user] = pass
        return "สำเร็จ\(userinfo[user])"
        
        
    }
    func remove_user() ->Bool{
    
        
        userinfo.removeValueForKey(user)
        return true
    }
    
  
}

let login = userINFO(user: "u003", pass: "zaqxsw")
if (login.creck()) {
    println("login success!!")
}
let up = userINFO(user: "u003", pass: "zaqxsw")
up.update_user_info()


let re_user = userINFO(user: "u003", pass: "zaqxsw")
re_user.remove_user()



