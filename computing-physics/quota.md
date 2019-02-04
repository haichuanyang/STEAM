For each file system in the cluster, the mmlsquota command displays:

          1. Block limits:

             - quota type (USR or GRP or FILESET)

             - current usage

             - soft limit

             - hard limit

             - space in doubt

             - grace period

          2. File limits:

             - current number of files

             - soft limit

             - hard limit

             - files in doubt

             - grace period
          Note: In cases where small files do not have an additional block allocated for them, quota usage may show less space usage than expected.


