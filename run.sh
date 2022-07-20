
EPSILON_path="/home/vinci/project/workspace/ws_epsilon/src/EPSILON"


gnome-terminal -x bash -c "source devel/setup.bash; roscore; exec bash;"
sleep 5

gnome-terminal -x bash -c "source devel/setup.bash; roscd phy_simulator/rviz; rviz -d phy_simulator_planning.rviz; exec bash;"

gnome-terminal -x bash -c "source devel/setup.bash; roslaunch planning_integrated test_ssc_with_eudm_ros.launch; exec bash;"

gnome-terminal -x bash -c "source devel/setup.bash; roslaunch ai_agent_planner onlane_ai_agent.launch; exec bash;"

gnome-terminal -x bash -c "source devel/setup.bash; roslaunch phy_simulator phy_simulator_planning.launch; exec bash;"

gnome-terminal -x bash -c "source devel/setup.bash; roscd aux_tools/src/; python3 terminal_server.py exec bash;"