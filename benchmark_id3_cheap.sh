#!/bin/bash

time ./run.sh --run-name attempt2_00_bench_noid3_nocheap --time-limit 60 --no-id3 --no-cheap --num-iters 5000 > results/attempt2_00_bench_noid3_nocheap.txt
time ./run.sh --run-name attempt2_01_bench_noid3_cheap --time-limit 60 --no-id3 --cheap --num-iters 5000 > results/attempt2_01_bench_noid3_cheap.txt
time ./run.sh --run-name attempt2_02_bench_id3_nocheap --time-limit 60 --id3 --no-cheap --num-iters 5000 > results/attempt2_02_bench_id3_nocheap.txt
time ./run.sh --run-name attempt2_03_bench_id3_cheap --time-limit 60 --id3 --cheap --num-iters 5000 > results/attempt2_03_bench_id3_cheap.txt

echo "Results for attempt2_00_bench_noid3_nocheap:"
./print_stats.sh results/attempt2_00_bench_noid3_nocheap.txt

echo ""
echo "================================="
echo "Results for attempt2_01_bench_noid3_cheap:"
./print_stats.sh results/attempt2_01_bench_noid3_cheap.txt

echo ""
echo "================================="
echo "Results for attempt2_02_bench_id3_nocheap:"
./print_stats.sh results/attempt2_02_bench_id3_nocheap.txt

echo ""
echo "================================="
echo "Results for attempt2_03_bench_id3_cheap:"
./print_stats.sh results/attempt2_03_bench_id3_cheap.txt
