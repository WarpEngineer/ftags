# ftags

Set tags on files using a simple Bash script.  The script can find files using those tags by utilizing slocate/mlocate.

## reqs:

* bash 4
* slocate/mlocate (on Mac: /usr/libexec/locate.updatedb)
* find?
* realpath: either coreutils or readlink -f or function:
<pre>
    realpath ()
    {
        f=$@;
        if [ -d "$f" ]; then
            base="";
            dir="$f";
        else
            base="/$(basename "$f")";
            dir=$(dirname "$f");
        fi;
        dir=$(cd "$dir" && /bin/pwd);
        echo "$dir$base"
    }
</pre>
