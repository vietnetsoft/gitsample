<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ionic.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <script>
        // Injected Ionic Go To URL Live Reload Plugin
        window.LiveReloadPlugin_IonicGoToUrl = (function () {
            var GOTO_KEY = "__ionic_goto_url__";
            var HISTORY_GO_KEY = "__ionic_history_go__";
            var GoToUrlPlugin = function (window, host) {
                this.window = window;
                this.host = host;
            }
            GoToUrlPlugin.identifier = "__ionic_goto_url__";
            GoToUrlPlugin.version = "1.0";
            GoToUrlPlugin.prototype.reload = function (path) {
                try {
                    if (path) {
                        if (path.indexOf(GOTO_KEY) === 0) {
                            this.window.document.location = path.replace(GOTO_KEY, "");
                            return true;
                        }
                        if (path.indexOf(HISTORY_GO_KEY) === 0) {
                            this.window.document.history.go(parseInt(path.replace(HISTORY_GO_KEY, ""), 10));
                            return true;
                        }
                    }
                } catch (e) {
                    console.log(e);
                }
                return false;
            };
            return GoToUrlPlugin;
        })();
    </script>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, width=device-width">
    <title></title>

    <link href="lib/ionic/css/ionic.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <!-- IF using Sass (run gulp sass first), then uncomment below and remove the CSS includes above
    <link href="css/ionic.app.css" rel="stylesheet">
    -->

    <!-- ionic/angularjs js -->
    <script src="lib/ionic/js/ionic.bundle.js"></script>

    <!-- cordova script (this will be a 404 during development) -->
    <script src="cordova.js"></script>

    <!-- your app's js -->
    <script src="js/app.js"></script>
    <script src="js/controllers.js"></script>
    <script src="js/services.js"></script>
</head>
<body ng-app="starter">
    <!--
      The nav bar that will be updated as we navigate between views.
    -->
    <ion-nav-bar class="bar-stable">
      <ion-nav-back-button>
      </ion-nav-back-button>
    </ion-nav-bar>
    <!--
      The views will be rendered in the <ion-nav-view> directive below
      Templates are in the /templates folder (but you could also
      have templates inline in this html file if you'd like).
    -->
    <ion-nav-view></ion-nav-view>
  
<script>//<![CDATA[
    document.write('<script src="//' + (location.hostname || 'localhost') + ':35729/livereload.js?snipver=1"><\/script>')
    //]]></script>
</body>
</html>
