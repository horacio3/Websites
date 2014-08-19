WebBlog
=======
git clone https://github.com/smbmwin/WebBlog.git
#These constants are used to set permissions
$inherit = [system.security.accesscontrol.InheritanceFlags]"ContainerInherit, ObjectInherit"
$propagation = [system.security.accesscontrol.PropagationFlags]"None"
 
#Set directory permissions
$directory = "D:\www\WebBlog\"
$acl = Get-Acl $directory
$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("IIS_IUSRS", "Modify", $inherit, $propagation, "Allow")
$acl.AddAccessRule($accessRule)
Set-Acl -aclobject $acl $directory

http://www.dotnetblogengine.net/

Set folder as a .NET 4.5 application
There isn't much to say about this. If you have direct IIS access, you need to create an application. If you are using a hosted provider, you need to use their control panel to make this happen. It should be a standard option, but if you don't find it, you may need to contact your hosting provider for support. BlogEngine.NET is developed under an "Integrated Mode" application pool. It is recommended your application pool be in Integrated Mode (as opposed to Classic Mode).
Add write permissions for App_Data folder
This is an often forgotten step. If you miss it, you'll notice as soon as you try to make a change. You need to give the application write permissions to the App_Data folder. Again, your hosting provider may have a control panel that allows you to do this. If not, you may need to contact your hosting provider for support.

Setting write permissions could involve up to 3 steps: 1) Using the IIS admin tool or your hosting provider's control panel, set the folder as "Write" capable; 2) If you have direct access to the file system, make sure the account under which the BlogEngine.NET's application pool is running (typically "ASPNET" or "Network Service") has write access to the physical folder; 3) After unzipping the web folder, all files have their read-only attribute enabled. Turn that attribute off for the App_Data folder and all files and subfolders. 