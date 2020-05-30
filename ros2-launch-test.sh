#!/bin/bash
echo "Put me at the parent path of ros2cli code base!"

cd ros2cli

function git_branch() {
	git checkout $1
	git clean -df > /dev/null 2>&1
}

function build() {
	colcon build > /dev/null 2>&1
	source install/setup.bash
}

function info() {
	git log -1 --oneline
	time ros2 --help > /dev/null 2>&1
	time ros2 --help > /dev/null 2>&1
	time ros2 --help > /dev/null 2>&1
}

function speed() {
	git_branch $1
	build
	sleep 20
	info
}

speed 658bcb4
sleep 10
speed 343e837
sleep 10
speed cff3c03
sleep 10
speed e57be12
sleep 10
speed 75e0ea1



