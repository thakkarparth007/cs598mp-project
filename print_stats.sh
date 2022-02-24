#!/bin/bash

file=$1

echo "get_synth_str: "
grep "get_synth_str took" $file | cut -f3 -d' ' | awk '{ sum += $1; hi = $1 > hi ? $1 : hi; n++ } END { if (n > 0) print "Total: ", sum, "s; Avg: ", sum / n, "s; Max: ", hi, "s"; }'

echo ""
echo "Synth query: "
grep "Time taken" $file | cut -f6 -d' ' | awk '{ sum += $1; hi = $1 > hi ? $1 : hi; n++ } END { if (n > 0) print "Total: ", sum, "s; Avg: ", sum / n, "s; Max: ", hi, "s"; }'

echo ""
echo "Winners:"
grep "Found after" $file | cut -f3 -d' ' | awk '{ sum += $1; hi = $1 > hi ? $1 : hi; n++ } END { if (n > 0) print "Total: ", n, "winners; Avg: ", hi / n, "s; Max: ", hi, "s"; }'