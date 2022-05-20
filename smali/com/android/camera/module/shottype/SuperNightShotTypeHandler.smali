.class public Lcom/android/camera/module/shottype/SuperNightShotTypeHandler;
.super Lcom/android/camera/module/shottype/ShotTypeHandler;
.source "SuperNightShotTypeHandler.java"


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

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ShotTypeHandler"

    const-string v2, "capture shot type could handle"

    .line 2
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public process()Ljava/lang/Integer;
    .locals 4

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightHalfAlgoUp()Z

    move-result v0

    const/4 v1, 0x5

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_5

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000O0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v1, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v1}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v3}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera2/CameraConfigs;->setRawCallbackType(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/shottype/ChainHandler;->mParam:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/module/shottype/ShotTypeParam;

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ShotTypeParam;->getRawType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2

    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 11
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 12
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, 0xa

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    return-object v1
.end method

.method public bridge synthetic process()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/shottype/SuperNightShotTypeHandler;->process()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
