hpcrun -e gpu=nvidia -o hpctoolkit-multiply-measurements ./multiply -d ./A.txt ./B.txt ./C.txt
cp -rf structs hpctoolkit-multiply-measurements
hpcrun -e gpu=nvidia,sanitizer -o hpctoolkit-multiply-measurements -ck HPCRUN_SANITIZER_MEM_VIEWS=20 ./multiply -d ./A.txt ./B.txt ./C.txt
