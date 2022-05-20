.class public Lcom/android/camera/module/impl/component/MiLivePlayer;
.super Ljava/lang/Object;
.source "MiLivePlayer.java"

# interfaces
.implements Lcom/android/camera/module/impl/component/ILive$ILivePlayer;


# static fields
.field public static final DEFAULT_FPS:I = 0x1e

.field public static final DEFAULT_TARGET_BITRATE:I = 0x1e00000


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mAudioPath:Ljava/lang/String;

.field public mComposeFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public mComposeNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

.field public mComposeState:I

.field public mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

.field public mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

.field public mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

.field public mPlayerNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

.field public mPlayerState:I

.field public mPreviewHeight:I

.field public mPreviewWidth:I

.field public mSegmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;"
        }
    .end annotation
.end field

.field public mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

.field public mVideoHeight:I

.field public mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/camera/module/impl/component/MiLivePlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    .line 4
    iput v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    .line 5
    new-instance v0, Lcom/android/camera/module/impl/component/MiLivePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiLivePlayer$1;-><init>(Lcom/android/camera/module/impl/component/MiLivePlayer;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

    .line 6
    new-instance v0, Lcom/android/camera/module/impl/component/MiLivePlayer$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/MiLivePlayer$2;-><init>(Lcom/android/camera/module/impl/component/MiLivePlayer;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/module/MiLiveModule;->loadLibs(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/impl/component/MiLivePlayer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/impl/component/MiLivePlayer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/module/impl/component/MiLivePlayer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/module/impl/component/MiLivePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->closeFileDescriptor()V

    return-void
.end method

.method private closeFileDescriptor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string v1, "close fd"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getComposeStateString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN"

    return-object p1

    :cond_0
    const-string p1, "COMPOSED"

    return-object p1

    :cond_1
    const-string p1, "COMPOSING"

    return-object p1

    :cond_2
    const-string p1, "PREPARE"

    return-object p1

    :cond_3
    const-string p1, "IDLE"

    return-object p1

    :cond_4
    const-string p1, "ERROR"

    return-object p1
.end method

.method private getPlayerStateString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, "UNKNOWN"

    return-object p1

    :cond_0
    const-string p1, "PAUSE"

    return-object p1

    :cond_1
    const-string p1, "PREVIEWING"

    return-object p1

    :cond_2
    const-string p1, "PENDING_START"

    return-object p1

    :cond_3
    const-string p1, "PREPARE"

    return-object p1

    :cond_4
    const-string p1, "IDLE"

    return-object p1

    :cond_5
    const-string p1, "ERROR"

    return-object p1
.end method

.method private initEffectGraph()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->releaseAllLibs()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEffectGraph mSegmentData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    const/4 v2, 0x0

    move v3, v2

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v4}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 8
    iget-object v4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;

    invoke-interface {v4}, Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;->getSpeed()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v3, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-direct {v3}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;-><init>()V

    iput-object v3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    .line 10
    invoke-virtual {v3}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->ConstructMediaEffectGraph()V

    .line 11
    iget-object v3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->AddSourcesAndEffectBySourcesPath([Ljava/lang/String;[F)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mAudioPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->SetAudioMute(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->AddAudioTrack(Ljava/lang/String;Z)J

    :cond_2
    :goto_1
    return-void
.end method

.method private initMediaCompose()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoWidth:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initEffectGraph()V

    .line 3
    new-instance v1, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-direct {v1, v0}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;-><init>(Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;)V

    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    .line 4
    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoWidth:I

    iget v3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoHeight:I

    const/high16 v4, 0x1e00000

    const/16 v5, 0x1e

    iget-object v6, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->ConstructMediaComposeFile(IIIILcom/xiaomi/recordmediaprocess/EffectNotifier;)Z

    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string v1, "invalid video size."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initMediaPlayer(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoWidth:I

    if-lez v0, :cond_1

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initEffectGraph()V

    .line 3
    new-instance v0, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    invoke-direct {v0, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;-><init>(Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;)V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    .line 4
    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->ConstructMediaPlayer()Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerNotifier:Lcom/xiaomi/recordmediaprocess/EffectNotifier;

    invoke-virtual {v0, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->SetPlayerNotify(Lcom/xiaomi/recordmediaprocess/EffectNotifier;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->SetPlayLoop(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    sget-object v2, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer$SurfaceGravity;->SurfaceGravityResizeAspectFit:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer$SurfaceGravity;

    invoke-virtual {v0, v2, p1, p2}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->setGravity(Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer$SurfaceGravity;II)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->SetGraphLoop(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->EnableUserAdjustRotatePlay(Z)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string p2, "initMediaPlayer"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string p2, "invalid video size."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private releaseAllLibs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->DestructMediaPlayer()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->DestructMediaComposeFile()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->DestructMediaEffectGraph()V

    .line 9
    iput-object v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaEffectGraph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    :cond_2
    return-void
.end method

.method private setComposeState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ComposeState state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getComposeStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getComposeStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;->onComposeStateChange(I)V

    :cond_0
    return-void
.end method

.method private setPlayerState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getPlayerStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getPlayerStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;->onPlayStateChange(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelCompose()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->CancelCompose()V

    :cond_0
    return-void
.end method

.method public init(IIIILjava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init video size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", preview size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-interface {p5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", audioPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoWidth:I

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mVideoHeight:I

    .line 6
    iput p3, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPreviewWidth:I

    .line 7
    iput p4, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPreviewHeight:I

    .line 8
    iput-object p5, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mSegmentData:Ljava/util/List;

    .line 9
    iput-object p6, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mAudioPath:Ljava/lang/String;

    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    return-void
.end method

.method public pausePlayer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->PausePreView()V

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->releaseAllLibs()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->reset()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->unloadLibs(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    :cond_1
    return-void
.end method

.method public resumePlayer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->ResumePreView()Z

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method

.method public setStateListener(Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mStateListener:Lcom/android/camera/module/impl/component/ILive$ILivePlayerStateListener;

    return-void
.end method

.method public startCompose(Lcom/android/camera/storage/mediastore/VideoFile;)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCompose videoFile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getComposeStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initMediaCompose()V

    const/4 v0, 0x2

    .line 12
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFd()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCompose E "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileDescriptor.valid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    invoke-virtual {v0, p1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->SetComposeFileFd(Ljava/io/FileDescriptor;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    invoke-virtual {p1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->BeginCompose()V

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCompose X"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startCompose(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCompose path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getComposeStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mComposeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initMediaCompose()V

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setComposeState(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCompose +"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    invoke-virtual {v0, p1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->SetComposeFileName(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mMediaComposeFile:Lcom/xiaomi/recordmediaprocess/MediaComposeFile;

    invoke-virtual {p1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->BeginCompose()V

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startCompose -"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startPlayer(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPlayer state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getPlayerStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",texture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->initMediaPlayer(II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->SetViewSurface(Landroid/view/Surface;)V

    const/4 p1, 0x2

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {p1}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->StartPreView()V

    const/4 p1, 0x3

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method

.method public stopPlayer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopPlayer state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/MiLivePlayer;->getPlayerStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mPlayerState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLivePlayer;->mEffectMediaPlayer:Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;

    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/EffectMediaPlayer;->StopPreView()V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/MiLivePlayer;->setPlayerState(I)V

    return-void
.end method
