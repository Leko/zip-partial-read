set -eu

COUNT=$1
DIR=$2

rm -rf $DIR
mkdir -p $DIR

for i in $(seq -w $COUNT); do
    wget -O $DIR/cat${i}.png "http://placekitten.com/${i}0/${i}0"
done
