.class public Lcom/android/camera/module/shottype/PortraitShotTypeHandler;
.super Lcom/android/camera/module/shottype/ShotTypeHandler;
.source "PortraitShotTypeHandler.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/shottype/ShotTypeHandler;-><init>(Lcom/android/camera/module/shottype/ShotTypeParam;)V

    return-void
.end method


# virtual methods
.method public couldProcess()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ShotTypeHandler"

    const-string/jumbo v2, "portrait shot type could handle"

    .line 2
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public process()Ljava/lang/Integer;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getBogusId()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isMultiRawCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getBogusId()I

    move-result v0

    const/16 v1, 0xb

    if-nez v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0O0o0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isMultiFrameCapture()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00o0O()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getBogusId()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 12
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getActualId()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/shottype/ShotTypeHandler;->needDual(I)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->needDepth()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->isCupCapture()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->needDepth()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v2, 0xd

    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->needDepth()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x7

    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 19
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->needDepth()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/shottype/PortraitShotTypeHandler;->process()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
