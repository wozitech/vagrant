# used to start/stop wikijs - from wikijs.service
#  a workaround to avoid the absolute paths required on ExecStart/ExecStop
#
# takes one parameter - the action "START" or "STOP"
NODE_EXECUTABLE=`which node`
PID_FILE=/var/run/wikijs.pid

case %1 in
    START)
        ${NODE_EXECUTABLE} wiki start
        $! > ${PID_FILE}
        ;;
    STOP)
        ${NODE_EXECUTABLE} wiki stop
        if [[ -f ${PID_FILE} ]]; then
            rm ${PID_FILE}
        fi
        ;;
esac