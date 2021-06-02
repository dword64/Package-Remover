   #!/bin/bash

    #Bash Script for installation testing

    echo "Testing Basic dependencies:"
    for cmd in "git" "gcc" "g++" "autoconf" "automake" "libtool" "python" "make" ; do
      printf "%-30s" "$cmd"
      if hash "$cmd" 2>/dev/null; then printf "OK\n"; else printf "missing\n"; fi
    done

    echo -e "\nTesting Basic command line editor installations:"
    for cmd in "nano"; do
      printf "%-30s" "$cmd"
      if hash "$cmd" 2>/dev/null; then printf "OK\n"; else printf "missing\n"; fi
    done

    echo -e "\nTesting Node.JS installations:"
    for cmd in "node" "npm"; do
      printf "%-30s" "$cmd"
      if hash "$cmd" 2>/dev/null; then printf "OK\n"; else printf "missing\n"; fi
    done

    echo -e "\nTesting GymTv installations:"
    for cmd in "<App name>"; do #replace app name with you installed .deb package
      printf "%-30s" "$cmd"
      if hash "$cmd" 2>/dev/null; then printf "OK\n"; else printf "missing\n"; fi
    done
