function postCommit(url)
{
  var strResult;


    
    try
    {
        // Create the WinHTTPRequest ActiveX Object.
        var WinHttpReq = new ActiveXObject(
                                  "WinHttp.WinHttpRequest.5.1");
        
        //  Create an HTTP request.
        var temp = WinHttpReq.Open("GET", url, false);


        //WinHttpReq.SetRequestHeader("Content-Type", "text/plain;charset=UTF-8");
        WinHttpReq.Send();
        
        //  Retrieve the response text.
        strResult = WinHttpReq.Status;



    }
    catch (objError)
    {
        strResult = objError + "\n"
        strResult += "WinHTTP returned error: " + 
            (objError.number & 0xFFFF).toString() + "\n\n";
        strResult += objError.description;
    }
    return strResult;
    //  Return the response text.
}

var jenkins   = WScript.Arguments.Item(0);
var job     = WScript.Arguments.Item(1);
var token = WScript.Arguments.Item(2);
//var jenkins = WScript.Arguments.Item(3);



var url = jenkins + "job/" + job + "/build?token=" + token;

WScript.Echo(url);
strResult = postCommit(url);

WScript.Echo(strResult);

