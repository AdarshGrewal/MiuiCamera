.class public Lcom/android/camera/module/video/KaraokeController;
.super Ljava/lang/Object;
.source "KaraokeController.java"


# instance fields
.field public mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

.field public mIsStopKaraoke:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/video/KaraokeController;->mIsStopKaraoke:Z

    return-void
.end method


# virtual methods
.method public closeKaraoke(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, v0}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->closeKaraokeState(Landroid/content/Context;I)V

    .line 3
    iget-boolean v1, p0, Lcom/android/camera/module/video/KaraokeController;->mIsStopKaraoke:Z

    if-eqz v1, :cond_0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/video/KaraokeController;->mIsStopKaraoke:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/video/KaraokeController;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/AudioMonitorPlayer;->stopPlay()V

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->closeKaraokeEquipment(Landroid/content/Context;I)V

    return-void
.end method

.method public openKaraoke(Landroid/content/Context;I)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, v0}, Lcom/android/camera/SoundSetting;->setNoiseReductionState(Landroid/content/Context;IZ)V

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->isSupportKaraoke(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/video/KaraokeController;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/AudioMonitorPlayer;

    invoke-direct {v1}, Lcom/android/camera/AudioMonitorPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/video/KaraokeController;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->openKaraokeEquipment(Landroid/content/Context;I)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoundSetting.isStartKaraoke121"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->isStartKaraoke(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isStartKaraoke"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/module/video/KaraokeController;->mIsStopKaraoke:Z

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/video/KaraokeController;->mAudioMonitorPlayer:Lcom/android/camera/AudioMonitorPlayer;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/android/camera/AudioMonitorPlayer;->startPlay()V

    .line 10
    :cond_1
    invoke-static {p1, p2}, Lcom/android/camera/SoundSetting;->openKaraokeState(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method
