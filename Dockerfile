FROM uber/android-build-environment:latest

RUN echo y | android update sdk --filter "extra-android-m2repository" --no-ui -a 

RUN mkdir "${ANDROID_HOME}/licenses"

RUN echo "8933bad161af4178b1185d1a37fbf41ea5269c55" > "${ANDROID_HOME}/licenses/android-sdk-license"

RUN echo "d56f5187479451eabf01fb78af6dfcb131a6481e" >> "${ANDROID_HOME}/licenses/android-sdk-license"

RUN unset ANDROID_NDK_HOME