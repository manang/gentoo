# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
ROS_REPO_URI="https://github.com/ros/robot_state_publisher"
KEYWORDS="~amd64 ~arm"

inherit ros-catkin

DESCRIPTION="Package for publishing the state of a robot to tf"
LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="
	dev-ros/kdl_parser
	dev-cpp/eigen:3
	sci-libs/orocos_kdl
	dev-ros/roscpp
	dev-ros/rosconsole
	dev-ros/rostime
	dev-ros/tf
	dev-ros/tf_conversions
	dev-ros/kdl_conversions
	dev-ros/sensor_msgs
"
DEPEND="${RDEPEND}"
