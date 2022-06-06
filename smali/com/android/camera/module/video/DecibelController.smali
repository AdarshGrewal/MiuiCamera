.class public Lcom/android/camera/module/video/DecibelController;
.super Ljava/lang/Object;
.source "DecibelController.java"

# interfaces
.implements Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;


# static fields
.field public static final GAIN_VALUE_DEFAULT:Ljava/lang/String; = "50"


# instance fields
.field public mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraOpened(ILandroid/content/Context;)V
    .locals 3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00O0Ooo()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/video/DecibelController;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/AudioCalculateDecibels;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/camera/AudioCalculateDecibels;-><init>(ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/module/video/DecibelController;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    invoke-virtual {v1, p0}, Lcom/android/camera/AudioCalculateDecibels;->setOnVolumeListener(Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/video/DecibelController;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    if-eqz v1, :cond_1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->getGainValueReset()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/SoundSetting;->setGainState(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/module/video/DecibelController;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    invoke-virtual {p1}, Lcom/android/camera/AudioCalculateDecibels;->start()V

    goto :goto_0

    :cond_1
    const-string p1, "50"

    invoke-static {p2, p1}, Lcom/android/camera/SoundSetting;->setGainState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onVolumeValue([F)V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setVolumeValue([F)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/DecibelController;->mAudioCalculateDecibels:Lcom/android/camera/AudioCalculateDecibels;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/AudioCalculateDecibels;->release()V

    :cond_0
    return-void
.end method
