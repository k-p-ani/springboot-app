#/bin/bash
echo "...buildah login....."
# login to push image registry
buildah login -u ${PUSH_IMAGE_REGISTRY_UNAME} -p ${PUSH_IMAGE_REGISTRY_PWD} ${PUSH_IMAGE_REGISTRY}
if [ "$?" -ne 0 ]; then
    echo "buildah login failed"
fi