#/bin/bash
echo "...buildah login....."
# login to push image registry
echo "...PUSH_IMAGE_REGISTRY ..... ${PUSH_IMAGE_REGISTRY}"
echo "...PUSH_IMAGE_REGISTRY_UNAME ..... ${PUSH_IMAGE_REGISTRY_UNAME}"
echo "...PUSH_IMAGE_REGISTRY_PWD ..... ${PUSH_IMAGE_REGISTRY_PWD}"


buildah login --tls-verify=false -u ${PUSH_IMAGE_REGISTRY_UNAME} -p ${PUSH_IMAGE_REGISTRY_PWD} ${PUSH_IMAGE_REGISTRY}
if [ "$?" -ne 0 ]; then
    echo "buildah login failed"
fi