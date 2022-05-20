.class public final Lcom/android/camera/tts/TTSHelper$3;
.super Ljava/lang/Object;
.source "TTSHelper.java"

# interfaces
.implements Lcom/android/camera/tts/TTSHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tts/TTSHelper;->speakingTextInTalkbackMode(Lcom/android/camera/tts/TTSHelper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusFailed()V
    .locals 2

    const-string v0, "TTSHelper"

    const-string v1, "failed to require audio focus."

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTTSStarted()V
    .locals 2

    const-string v0, "TTSHelper"

    const-string/jumbo v1, "onTTSStarted."

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTTSStopped(Z)V
    .locals 1

    const-string p1, "TTSHelper"

    const-string/jumbo v0, "onTTSStopped."

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
