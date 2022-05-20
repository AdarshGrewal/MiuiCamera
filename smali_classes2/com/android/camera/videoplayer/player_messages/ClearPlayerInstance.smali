.class public Lcom/android/camera/videoplayer/player_messages/ClearPlayerInstance;
.super Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.source "ClearPlayerInstance.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    return-void
.end method


# virtual methods
.method public performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->clearPlayerInstance()V

    return-void
.end method

.method public stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PLAYER_INSTANCE_CLEARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object v0
.end method

.method public stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->CLEARING_PLAYER_INSTANCE:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object v0
.end method
