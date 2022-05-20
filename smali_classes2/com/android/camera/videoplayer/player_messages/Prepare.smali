.class public Lcom/android/camera/videoplayer/player_messages/Prepare;
.super Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.source "Prepare.java"


# static fields
.field public static final SHOW_LOGS:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mResultPlayerMessageState:Lcom/android/camera/videoplayer/PlayerMessageState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/videoplayer/Config;->SHOW_LOGS:Z

    sput-boolean v0, Lcom/android/camera/videoplayer/player_messages/Prepare;->SHOW_LOGS:Z

    .line 2
    const-class v0, Lcom/android/camera/videoplayer/player_messages/Prepare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/videoplayer/player_messages/Prepare;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    return-void
.end method


# virtual methods
.method public performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->prepare()V

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->getCurrentState()Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper$State;

    move-result-object p1

    .line 3
    sget-boolean v0, Lcom/android/camera/videoplayer/player_messages/Prepare;->SHOW_LOGS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/videoplayer/player_messages/Prepare;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultOfPrepare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/videoplayer/player_messages/Prepare$1;->$SwitchMap$com$android$camera$videoplayer$ui$MediaPlayerWrapper$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    sget-object p1, Lcom/android/camera/videoplayer/PlayerMessageState;->ERROR:Lcom/android/camera/videoplayer/PlayerMessageState;

    iput-object p1, p0, Lcom/android/camera/videoplayer/player_messages/Prepare;->mResultPlayerMessageState:Lcom/android/camera/videoplayer/PlayerMessageState;

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object p1, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARED:Lcom/android/camera/videoplayer/PlayerMessageState;

    iput-object p1, p0, Lcom/android/camera/videoplayer/player_messages/Prepare;->mResultPlayerMessageState:Lcom/android/camera/videoplayer/PlayerMessageState;

    goto :goto_0

    .line 7
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/Prepare;->mResultPlayerMessageState:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object v0
.end method

.method public stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->PREPARING:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object v0
.end method
