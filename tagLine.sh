#!/bin/bash
# Marissa Huang - 10179169
# Deven Bernard - 10099810
# Kevin Zuern - 10134425
# Quentin Petraroia - 10145835

find . -type f -executable -print | awk -F "/" '{print $2}' | xargs sed -i '/#!\/bin\/bash/a #Developed in cisc220'
 





