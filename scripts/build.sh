- script: chmod +x ./scripts/build.sh
  displayName: "Grant execute permission to build.sh"

- script: ./scripts/build.sh
  displayName: "Build artifact (zip www)"
