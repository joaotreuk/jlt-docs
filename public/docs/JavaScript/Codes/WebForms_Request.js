//Call back do inicio da request
Sys.WebForms.PageRequestManager.getInstance().add_beginRequest(BeginRequestHandler)
function BeginRequestHandler(sender, args) { }


//Call back do final da request
Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler)
function EndRequestHandler(sender, args) { }


//Pega o elemento da request
function BeginRequestHandler(sender, args) {
   try {
      args.get_request().set_userContext(args.get_postBackElement().id)
   }
   catch (e) {
      console.log(e)
   }
}

function EndRequestHandler(sender, args) {
   if (args.get_response().get_webRequest().get_userContext() == "CPHBody_BtnMudar") {
      console.log(1)
   }
}