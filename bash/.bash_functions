# check file size
function fs() {
    du -sh ${1} | awk '{print $1}'
}
