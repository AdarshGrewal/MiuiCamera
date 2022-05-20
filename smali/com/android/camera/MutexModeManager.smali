.class public Lcom/android/camera/MutexModeManager;
.super Ljava/lang/Object;
.source "MutexModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/MutexModeManager$MutexCallBack;,
        Lcom/android/camera/MutexModeManager$MutexMode;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MutexModeManager"

.field public static final MUTEX_AOHDR:I = 0x2

.field public static final MUTEX_BURST_SHOOT:I = 0x6

.field public static final MUTEX_GROUP:I = 0x8

.field public static final MUTEX_HAND_NIGHT:I = 0x3

.field public static final MUTEX_MORPHO_HDR:I = 0x1

.field public static final MUTEX_NONE:I = 0x0

.field public static final MUTEX_RAW:I = 0x4

.field public static final MUTEX_SCENE_HDR:I = 0x5

.field public static final MUTEX_STEREO:I = 0x7

.field public static final MUTEX_SUPER_RESOLUTION:I = 0x9


# instance fields
.field public volatile mCurrentMutexMode:I

.field public mIsMandatory:Z

.field public mMutexCallBack:Lcom/android/camera/MutexModeManager$MutexCallBack;


# direct methods
.method public constructor <init>(Lcom/android/camera/MutexModeManager$MutexCallBack;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 3
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mMutexCallBack:Lcom/android/camera/MutexModeManager$MutexCallBack;

    return-void
.end method

.method private enter(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MutexModeManager;->mMutexCallBack:Lcom/android/camera/MutexModeManager$MutexCallBack;

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v0, p1, :cond_2

    return-void

    .line 3
    :cond_2
    iput p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/MutexModeManager;->mMutexCallBack:Lcom/android/camera/MutexModeManager$MutexCallBack;

    invoke-interface {v0, p1}, Lcom/android/camera/MutexModeManager$MutexCallBack;->enterMutexMode(I)V

    return-void
.end method

.method private exit(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MutexModeManager;->mMutexCallBack:Lcom/android/camera/MutexModeManager$MutexCallBack;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/MutexModeManager;->mMutexCallBack:Lcom/android/camera/MutexModeManager$MutexCallBack;

    invoke-interface {v0, p1}, Lcom/android/camera/MutexModeManager$MutexCallBack;->exitMutexMode(I)V

    return-void
.end method

.method private declared-synchronized switchMutexMode(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MutexModeManager"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchMutexMode from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/MutexModeManager;->exit(I)V

    .line 3
    invoke-direct {p0, p2}, Lcom/android/camera/MutexModeManager;->enter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public clearMandatoryFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "HHT"

    return-object v0

    :cond_1
    const-string v0, "AO_HDR"

    return-object v0

    :cond_2
    const-string v0, "HDR"

    return-object v0
.end method

.method public getMutexMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "_RAW"

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooO0O0()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isForceNameSuffix()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 3
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    return-object v1

    :cond_3
    const-string v0, "_HHT"

    return-object v0

    :cond_4
    const-string v0, "_AO_HDR"

    return-object v0

    :cond_5
    const-string v0, "_HDR"

    return-object v0
.end method

.method public inMandatoryMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    return v0
.end method

.method public isAoHdr()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBurstShoot()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGroupShot()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHandNight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHdr()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isHdrSupportTorch(Z)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000oO()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMorphoHdr()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNeedComposed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNormal()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRAW()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSceneHdr()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuperResolution()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportedFlashOn()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSupportedTorch()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->o00000oO()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetMutexMode()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetMutexMode, caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MutexModeManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v1, v0}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method

.method public setMutexMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMutexMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MutexModeManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 3
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method

.method public setMutexModeMandatory(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMutexModeMandatory mode->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MutexModeManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/MutexModeManager;->mIsMandatory:Z

    .line 3
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    return-void
.end method
