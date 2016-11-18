FROM google/cloud-sdk:latest

# Install curl
RUN apt-get update && apt-get install -y -qq --no-install-recommends curl git && apt-get clean

# Default command
CMD ["/bin/bash"]
