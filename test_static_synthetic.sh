R=1000000
r=10

for((s=1; s<=3; s+=1)); do
	for((i=1000; i<=$R; i*=10)); do
		echo $i
		./denc --neighbors $r --clusters 2  --type=vec  ../ParCluster/dataset/uniform/${i}.txt > results/uniform${s}/fastdp_${i}.txt
		./denc --neighbors $r --clusters 2  --type=vec  ../ParCluster/dataset/simden/${i}.txt > results/simden${s}/fastdp_${i}.txt
		./denc --neighbors $r --clusters 2  --type=vec  ../ParCluster/dataset/varden/${i}.txt > results/varden${s}/fastdp_${i}.txt
	done
	./denc --neighbors $r --clusters 2  --type=vec  ../ParCluster/dataset/reallife/3D_GeoLife_1K.pbbs > results/geolife${s}/fastdp_1K.txt
	./denc --neighbors $r --clusters 2  --type=vec  ../ParCluster/dataset/reallife/3D_GeoLife_10K.pbbs > results/geolife${s}/fastdp_10K.txt
	./denc --neighbors $r --clusters 2  --type=vec  ../ParCluster/dataset/reallife/3D_GeoLife_100K.pbbs > results/geolife${s}/fastdp_100K.txt
	./denc --neighbors $r --clusters 2  --type=vec  ../ParCluster/dataset/reallife/3D_GeoLife_1M.pbbs > results/geolife${s}/fastdp_1M.txt
done
