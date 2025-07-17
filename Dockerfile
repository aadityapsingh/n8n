# Use the stable version of n8n as our base
FROM n8nio/n8n:1.42.0

# Switch to the root user to install nodes
USER root

# Install the community nodes we need
RUN npm install @n8n-io/n8n-nodes-pexels n8n-nodes-replicate

# Switch back to the non-root 'node' user
USER node
