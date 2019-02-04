
mmfsLogLevel


This option specifies the minimum severity level for messages sent to the Spectrum Scale log file (/var/adm/ras/mmfs.log.latest) or none for no messages. It uses the same message severity levels used by the systemLogLevel attribute and the default level is detail.
Both systemLogLevel and mmfsLogLevel can be changed by the mmchconfig command and are independent. For more information, see the mmchconfig command in GPFS V4.1: Administration and Programming Reference, SA23-1452-00.


systemLogLevel

This configuration attribute specifies the minimum severity level for messages sent to the system log. The severity levels from highest to lowest priority are: alert, critical, error, warning, notice, configuration, informational, detail, and debug. The default value is notice. The value specified for this attribute can be any severity level, or the value none can be specified so no messages are sent to the system log. This attribute only affects messages originating in the Spectrum Scale daemon (mmfsd).


page 432 of 
IBM Spectrum Scale redbook
