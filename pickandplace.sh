#!/bin/bash

#initial bend to grab

rostopic pub -1 /shoulder_pitch_position_controller/command std_msgs/Float64 -- .5 &
rostopic pub -1 /elbow_pitch_position_controller/command std_msgs/Float64 -- 1.0 &
rostopic pub -1 /wrist_pitch_position_controller/command std_msgs/Float64 -- 1.5 &
sleep 3

#lift slightly

rostopic pub -1 /shoulder_pitch_position_controller/command std_msgs/Float64 -- 0 &
rostopic pub -1 /elbow_pitch_position_controller/command std_msgs/Float64 -- 1.25 &
rostopic pub -1 /wrist_pitch_position_controller/command std_msgs/Float64 -- 1.25 &
sleep 3

#rotate arm

rostopic pub -1 /shoulder_yaw_position_controller/command std_msgs/Float64 -- 1.0 &
sleep 3

#re-bend arm to place

rostopic pub -1 /shoulder_pitch_position_controller/command std_msgs/Float64 -- .5 &
rostopic pub -1 /elbow_pitch_position_controller/command std_msgs/Float64 -- 1.0 &
rostopic pub -1 /wrist_pitch_position_controller/command std_msgs/Float64 -- 1.5 &
sleep 3

#lift back to default stand-up pose

rostopic pub -1 /shoulder_pitch_position_controller/command std_msgs/Float64 -- 0 &
rostopic pub -1 /elbow_pitch_position_controller/command std_msgs/Float64 -- 0 &
rostopic pub -1 /wrist_pitch_position_controller/command std_msgs/Float64 -- 0 &
rostopic pub -1 /shoulder_yaw_position_controller/command std_msgs/Float64 -- 0 &
sleep 3
