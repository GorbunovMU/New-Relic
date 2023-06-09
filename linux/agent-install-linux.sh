# Create a configuration file and add your license key \


# echo "license_key: 7fcb1dadcafa186546ebb63f521774e58c2cNRAL" | sudo tee -a /etc/newrelic-infra.yml && \

# \

# Create the agent’s yum repository \

sudo curl -o /etc/yum.repos.d/newrelic-infra.repo https://download.newrelic.com/infrastructure_agent/linux/yum/el/7/x86_64/newrelic-infra.repo && \

\

# Update your yum cache \

sudo yum -q makecache -y --disablerepo='*' --enablerepo='newrelic-infra' && \

\

# Run the installation script \

sudo yum install newrelic-infra -y