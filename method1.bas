B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Activity
Version=8
@EndOfDesignText@
#Region  Activity Attributes 
	#FullScreen: False
	#IncludeTitle: True
#End Region

Sub Process_Globals
	'These global variables will be declared once when the application starts.
	'These variables can be accessed from all modules.

End Sub

Sub Globals
	'These global variables will be redeclared each time the activity is created.
	'These variables can only be accessed from this module.
	Dim wv As WebView

End Sub

Sub Activity_Create(FirstTime As Boolean)
	'Do not forget to load the layout file created with the visual designer. For example:
	'Activity.LoadLayout("Layout1")

	wv.Initialize("wv")
	Activity.AddView(wv,0,0,100%x,100%y)
	wv.LoadUrl("http://www.google.com")
End Sub

Sub wv_PageFinished (Url As String)
	Dim wve As WebViewExtras
	wve.Initialize(wv)
	wve.ExecuteJavascript( "document.getElementById('hplogo').style.display = 'none';")
End Sub

Sub Activity_Resume

End Sub

Sub Activity_Pause (UserClosed As Boolean)

End Sub
