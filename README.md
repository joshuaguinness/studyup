# StudyUp!

Created at BrickHacks at the Rochester Institute of Technology. The Devpost for it can be found here: https://devpost.com/software/studyup-5ezxyw. 

The purpose of this app is to connect people at Universities/Colleges who are looking to study with other people.

A main problem students face is that they struggle to find people to study with. This results in less fruitful studying and a lack of understanding of key concepts, overall resulting in lower grades. This app sovles this by providing a platform for students to find study sessions based on the classes they are in, and for students to create study sessions that people can join.

My group and I also planned to add some unique features to this app such as an endorsment system for people that are knowledgeable in that particular class.

The main page, seen below, shows a list of all active study sessions based on the classes that the user is enrolled in.

![alt text](https://github.com/joshuaguinness/studyup/edit/master/App%20Screenshots/Screenshot_20190318-121710.jpg){:height="50%" width="50%"}

Clicking on one of the study sessions brings you to this page seen below. This page is incomplete so far.

![alt text](https://github.com/joshuaguinness/studyup/blob/master/App%20Screenshots/Screenshot_20190318-121733.jpg)

Going back on the main screen, clicking on the user icon (top left), brings you to this page. Here you can edit the courses you are enrolled in and see your endorsment level. 

![alt text](https://github.com/joshuaguinness/studyup/blob/master/App%20Screenshots/Screenshot_20190318-121718.jpg)

Again going back to the main screen, clicking on the + icon (top right) will bring you to this page. This will allow a user to create a new study session.

![alt text](https://github.com/joshuaguinness/studyup/blob/master/App%20Screenshots/Screenshot_20190318-121727.jpg)

## Creation

This app was created using flutter, Google's open course app development platform that allows simultaneous development on iOS and Android. The language used for programming this is Dart. Both of these were new for me but both were pretty easy to pickup after reading documentation, walking through some tutorials, and thinking critically about how they are structured. It is definitly much easier than native android development using Java.

To store our info, we used a Google cloud server then used POST and GET requests via REST API's to send and get data for the app. Implementing this was definitly the hardest part as it was new for everyone in my group but we were successfully able to get some info from the server to the app.
