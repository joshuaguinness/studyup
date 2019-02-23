# studyup

Created at BrickHacks at the Rochester Institute of Technology. The Devpost for it can be found here: https://devpost.com/software/studyup-5ezxyw. 

I am planning on updating this readme soon as well as continuing to work on this app in my spare time.

## To Use
`source /env/bin/activate/` to enter the virtual environment and set up variables.

pip install the requirements to `lib/`

`./cloud_sql_proxy -instances=studyup:us-central1:studyup-mysql=tcp:3306` to launch the SQL instance.

`python main.py` to launch the webapp.

Visit `localhost:8080` to check it out!
