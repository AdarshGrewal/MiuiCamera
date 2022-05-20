.class public Lcom/android/camera/videoplayer/player_messages/Start;
.super Lcom/android/camera/videoplayer/player_messages/PlayerMessage;
.source "Start.java"


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

    sput-boolean v0, Lcom/android/camera/videoplayer/player_messages/Start;->SHOW_LOGS:Z

    .line 2
    const-class v0, Lcom/android/camera/videoplayer/player_messages/Start;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/videoplayer/player_messages/Start;->TAG:Ljava/lang/String;

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
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->getCurrentState()Lcom/android/camera/videoplayer/PlayerMessageState;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/android/camera/videoplayer/player_messages/Start;->SHOW_LOGS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/videoplayer/player_messages/Start;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/videoplayer/player_messages/Start$1;->$SwitchMap$com$android$camera$videoplayer$PlayerMessageState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string/jumbo v2, "unhandled current state "

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :pswitch_1
    sget-object p1, Lcom/android/camera/videoplayer/PlayerMessageState;->ERROR:Lcom/android/camera/videoplayer/PlayerMessageState;

    iput-object p1, p0, Lcom/android/camera/videoplayer/player_messages/Start;->mResultPlayerMessageState:Lcom/android/camera/videoplayer/PlayerMessageState;

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->start()V

    .line 7
    sget-object p1, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTED:Lcom/android/camera/videoplayer/PlayerMessageState;

    iput-object p1, p0, Lcom/android/camera/videoplayer/player_messages/Start;->mResultPlayerMessageState:Lcom/android/camera/videoplayer/PlayerMessageState;

    goto :goto_0

    .line 8
    :pswitch_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public stateAfter()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/Start;->mResultPlayerMessageState:Lcom/android/camera/videoplayer/PlayerMessageState;

    return-object v0
.end method

.method public stateBefore()Lcom/android/camera/videoplayer/PlayerMessageState;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/videoplayer/player_messages/PlayerMessage;->getCurrentState()Lcom/android/camera/videoplayer/PlayerMessageState;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcom/android/camera/videoplayer/player_messages/Start;->SHOW_LOGS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/camera/videoplayer/player_messages/Start;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stateBefore, currentState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/videoplayer/player_messages/Start$1;->$SwitchMap$com$android$camera$videoplayer$PlayerMessageState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string/jumbo v2, "unhandled current state "

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :pswitch_1
    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->ERROR:Lcom/android/camera/videoplayer/PlayerMessageState;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/android/camera/videoplayer/PlayerMessageState;->STARTING:Lcom/android/camera/videoplayer/PlayerMessageState;

    goto :goto_0

    .line 7
    :pswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
