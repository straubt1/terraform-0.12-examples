#!/bin/bash
docker run --rm -it --entrypoint /bin/bash -v $(pwd):/terraform \
  -e AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}" \
  -e AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}" \
  -e ARM_TENANT_ID="${ARM_TENANT_ID}" \
  -e ARM_SUBSCRIPTION_ID="${ARM_SUBSCRIPTION_ID}" \
  -e ARM_CLIENT_ID="${ARM_CLIENT_ID}" \
  -e ARM_CLIENT_SECRET="${ARM_CLIENT_SECRET}" \
  straubt1/tf012-preview