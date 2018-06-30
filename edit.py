import datetime

myfile = open("README.md")

fun = ""
for line in myfile:
    fun += line
fun += datetime.datetime.now().isoformat()
fun += "\n"
myfile.close()

swift_file = open("README.md", "w")
swift_file.write(fun)
swift_file.close()
