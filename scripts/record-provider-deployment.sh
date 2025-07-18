#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Load environment variables
. ./scripts/env-setup.sh

# Record provider deployment for the main branch
if [ "$GITHUB_BRANCH" = "main" ]; then
  # Record deployment for MoviesAPI
  pact-broker record-deployment \
    --pacticipant MoviesAPI \
    --version $GITHUB_SHA \
    --environment $npm_config_env

  # # Kafka related
  # diable messageque test
  # # # Record deployment for MoviesAPI-event-producer
  # pact-broker record-deployment \
  #   --pacticipant MoviesAPI-event-producer \
  #   --version $GITHUB_SHA \
  #   --environment $npm_config_env
fi
