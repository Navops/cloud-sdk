FROM google/cloud-sdk:latest

# Install curl, git and patch
RUN apt-get update && apt-get install -y -qq --no-install-recommends curl git patch && apt-get clean

# Default command
CMD ["/bin/bash"]
