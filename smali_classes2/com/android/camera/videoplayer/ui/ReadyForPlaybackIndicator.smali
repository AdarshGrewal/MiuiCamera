.class public Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;
.super Ljava/lang/Object;
.source "ReadyForPlaybackIndicator.java"


# static fields
.field public static final SHOW_LOGS:Z

.field public static final TAG:Ljava/lang/String; = "ReadyForPlaybackIndicator"


# instance fields
.field public mFailedToPrepareUiForPlayback:Z

.field public mSurfaceTextureAvailable:Z

.field public mVideoSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    sput-boolean v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->SHOW_LOGS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    return-void
.end method


# virtual methods
.method public isFailedToPrepareUiForPlayback()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    return v0
.end method

.method public isReadyForPlayback()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->isVideoSizeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->isSurfaceTextureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->SHOW_LOGS:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyForPlayback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public isSurfaceTextureAvailable()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSurfaceTextureAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    return v0
.end method

.method public isVideoSizeAvailable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mVideoSize:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-boolean v1, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->SHOW_LOGS:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoSizeAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public setFailedToPrepareUiForPlayback(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    return-void
.end method

.method public setSurfaceTextureAvailable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    return-void
.end method

.method public setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->mVideoSize:Landroid/util/Pair;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
