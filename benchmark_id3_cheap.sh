#!/bin/bash

# ./run.sh --run-name 00_bench_noid3_nocheap --time-limit 60 --no-id3 --no-cheap --num-iters 5000 > results/00_bench_noid3_nocheap.txt
# ./run.sh --run-name 01_bench_noid3_cheap --time-limit 60 --no-id3 --cheap --num-iters 5000 > results/01_bench_noid3_cheap.txt
# ./run.sh --run-name 02_bench_id3_nocheap --time-limit 60 --id3 --no-cheap --num-iters 5000 > results/02_bench_id3_nocheap.txt
# ./run.sh --run-name 03_bench_id3_cheap --time-limit 60 --id3 --cheap --num-iters 5000 > results/03_bench_id3_cheap.txt

echo "Results for 00_bench_noid3_nocheap:"
./print_stats.sh results/00_bench_noid3_nocheap.txt

echo ""
echo "================================="
echo "Results for 01_bench_noid3_cheap:"
./print_stats.sh results/01_bench_noid3_cheap.txt

echo ""
echo "================================="
echo "Results for 02_bench_id3_nocheap:"
./print_stats.sh results/02_bench_id3_nocheap.txt

echo ""
echo "================================="
echo "Results for 03_bench_id3_cheap:"
./print_stats.sh results/03_bench_id3_cheap.txt
