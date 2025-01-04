import launch
import launch.actions
import launch.substitutions
import launch_ros.actions


def generate_launch_description():

    bpmcount = launch_ros.actions.Node(
            package='bpmpkg',
            executable='bpmcount',
            )
    listener = launch_ros.actions.Node(
            package='bpmpkg',
            executable='listener',
            output='screen'
            )

    return launch.LaunchDescription([bpmcount, listener])
