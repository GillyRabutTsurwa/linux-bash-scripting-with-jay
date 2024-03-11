#!/bin/bash

# Path to your WordPress installation
WORDPRESS_PATH="/home/rabuttsurwa96/Sites/ssmt"

# Navigate to the WordPress directory
cd "$WORDPRESS_PATH"

# Get the list of plugin names
mapfile -t plugin_names < <(wp plugin list --field=name)
# Print the array of plugin names
echo "List of plugins:"
for index in "${!plugin_names[@]}"; do
    echo "$index - ${plugin_names[index]}";
done

