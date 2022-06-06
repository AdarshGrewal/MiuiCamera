.class public Lcom/android/camera/module/AudioController;
.super Ljava/lang/Object;
.source "AudioController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioController"


# instance fields
.field public mAudioManager:Landroid/media/AudioManager;

.field public mOldControlStream:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/AudioController;->mOldControlStream:I

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/camera/module/AudioController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public requestMusicSteam(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/module/AudioController;->silenceAudio()V

    invoke-virtual {p1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/AudioController;->mOldControlStream:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method public restoreAudio()V
    .locals 2

    const-string v0, "AudioController"

    const-string/jumbo v1, "restoreAudio: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/AudioController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public restoreMusicSteam(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/module/AudioController;->restoreAudio()V

    iget v0, p0, Lcom/android/camera/module/AudioController;->mOldControlStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method

.method public silenceAudio()V
    .locals 4

    const-string v0, "AudioController"

    const-string/jumbo v1, "silenceAudio: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/AudioController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public stopAudio()V
    .locals 4

    const-string v0, "AudioController"

    const-string/jumbo v1, "stopAudio: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/AudioController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method
