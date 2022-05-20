package miui.popupcamera;


/** {@hide} */
interface IPopupCameraManager {
    // Since these transactions are also called from native code, these must be kept in sync with
    // the ones in frameworks/av/services/camera/libcameraservice/popupcamera/binder/IPopupCameraManager.cpp
    // =============== Beginning of transactions used on native side as well ======================
    boolean notifyCameraStatus(int cameraId, int status, in String clientPackageName);
    // =============== End of transactions used on native side as well ============================

    boolean popupMotor();
    boolean takebackMotor();
    int getMotorStatus();
    void calibrationMotor();
}