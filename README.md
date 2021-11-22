# panda_handeye_calibration

1. Docker 설치
```bash
curl https://get.docker.com | sh \
  && sudo systemctl --now enable docker
 
    sudo usermod -aG docker $USER # 현재 접속중인 사용자에게 권한주기
    sudo usermod -aG docker your-user # your-user 사용자에게 권한주기

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo apt-get update

sudo apt-get install -y nvidia-docker2
```


2. Docker build

Docker는 Dokerfile을 이용하여 설치명령어를 작성합니다. Dokerfile을 build 과정을 수행하여 docker image로 변환되며 변환된 이후 docker를 사용할 수 있습니다.

```bash
    git clone https://github.com/tjdalsckd/panda_handeye_calibration.git
    bash build.sh
```

3. 실행방법

제어 PC에서 panda_control_moveit.rviz.launch를 실행한다.
``` bash
  roslaunch panda_control_moveit_rviz.launch
```
현재 폴더 panda_handeye_calibration에서 빌드를 완료한 후 다음의 명령어로 rviz를 실행한다.(바로 realsense2_camera rs_camera.launch가 실행되며 rviz가 동시에 실행된다.)
```bash
  bash start.sh
```
Add를 눌러 HandEyeCalibration을 추가 Target 탭에서 다음과 같이 설정

![image](https://user-images.githubusercontent.com/53217819/142820762-6fdaf67d-faa2-4cce-9b00-2b65780a7b23.png)


Context탭에서 다음과 같이 설정

![image](https://user-images.githubusercontent.com/53217819/142820826-a4a063fb-71c4-4111-9eb3-11666db961ae.png)



