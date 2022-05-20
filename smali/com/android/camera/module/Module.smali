.class public interface abstract Lcom/android/camera/module/Module;
.super Ljava/lang/Object;
.source "Module.java"


# virtual methods
.method public abstract attachModuleDevice(Lcom/android/camera/features/mode/IModuleDevice;)V
.end method

.method public abstract exitAutoHibernation()V
.end method

.method public abstract getActivity()Lcom/android/camera/Camera;
.end method

.method public abstract getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;
.end method

.method public abstract getCameraManager()Lcom/android/camera/module/common/ICameraMgr;
.end method

.method public getModuleDeviceParam()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getModuleIndex()I
.end method

.method public abstract getModuleState()Lcom/android/camera/module/common/IModuleState;
.end method

.method public abstract getMutexModePicker()Lcom/android/camera/MutexModeManager;
.end method

.method public abstract getSurfaceTextureMgr()Lcom/android/camera/module/common/ISurfaceTextureMgr;
.end method

.method public abstract getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;
.end method

.method public abstract onGLAndCameraReady(II)V
.end method

.method public abstract onModuleCreated(Lcom/android/camera/Camera;Lcom/android/camera/module/loader/StartControl;II)V
.end method

.method public abstract onRenderRequested()V
.end method

.method public abstract onVideoCastStateChanged(Landroid/os/Bundle;)V
.end method

.method public abstract quickEnterAutoHibernation()V
.end method

.method public abstract release(Z)V
.end method

.method public abstract setDeparted()V
.end method

.method public abstract unRegisterModulePersistProtocol()V
.end method
