.class public Lcom/android/camera/module/video/FaceDetectManager;
.super Ljava/lang/Object;
.source "FaceDetectManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;


# instance fields
.field public mFaceDetected:Z

.field public mFaceDetectionEnabled:Z

.field public mFaceDetectionStarted:Z

.field public mIsVideoFaceViewShown:Z

.field public mModule:Lcom/android/camera/module/VideoBase;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    return-void
.end method

.method private getMainContentProtocol()Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    return-object v0
.end method

.method private updateFaceView(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x23

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public isFaceDetectStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    return v0
.end method

.method public isUseFaceInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/effect/FaceAnalyzeInfo;Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 4
    array-length v0, p1

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5
    :goto_0
    iget-boolean v3, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetected:Z

    if-eq v0, v3, :cond_3

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->isFacingFront()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v3}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v3

    const/16 v4, 0xa2

    if-ne v3, v4, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    .line 7
    :cond_3
    iput-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetected:Z

    .line 8
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mIsVideoFaceViewShown:Z

    if-nez v0, :cond_5

    return-void

    .line 9
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o000000()Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    aget-object v0, p1, v2

    iget v0, v0, Lcom/android/camera2/CameraHardwareFace;->faceType:I

    const v2, 0xface

    if-eq v0, v2, :cond_7

    .line 10
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object p2

    .line 12
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setFaces(I[Lcom/android/camera2/CameraHardwareFace;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    :cond_7
    return-void
.end method

.method public setFaceDetectionEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/CameraCapabilities;->getMaxFaceCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->startFaceDetection()V

    .line 6
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mIsVideoFaceViewShown:Z

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setActiveIndicator(I)V

    .line 8
    invoke-direct {p0, v1, v1}, Lcom/android/camera/module/video/FaceDetectManager;->updateFaceView(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopFaceDetection(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionStarted:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->stopFaceDetection()V

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mIsVideoFaceViewShown:Z

    if-eqz v1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setActiveIndicator(I)V

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/video/FaceDetectManager;->updateFaceView(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateFace()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mModule:Lcom/android/camera/module/VideoBase;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoBase;->enableFaceDetection()Z

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/video/FaceDetectManager;->getMainContentProtocol()Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->setSkipDrawFace(Z)V

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_2

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoFaceViewShownEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mIsVideoFaceViewShown:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/video/FaceDetectManager;->startFaceDetection()V

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera/module/video/FaceDetectManager;->stopFaceDetection(Z)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/module/video/FaceDetectManager;->mFaceDetectionEnabled:Z

    :cond_2
    :goto_0
    return-void
.end method
