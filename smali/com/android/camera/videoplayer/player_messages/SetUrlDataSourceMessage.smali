.class public Lcom/android/camera/videoplayer/player_messages/SetUrlDataSourceMessage;
.super Lcom/android/camera/videoplayer/player_messages/SetDataSourceMessage;
.source "SetUrlDataSourceMessage.java"


# instance fields
.field public final mVideoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Ljava/lang/String;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/camera/videoplayer/player_messages/SetDataSourceMessage;-><init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;Lcom/android/camera/videoplayer/manager/VideoPlayerManagerCallback;)V

    iput-object p2, p0, Lcom/android/camera/videoplayer/player_messages/SetUrlDataSourceMessage;->mVideoUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public performAction(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/videoplayer/player_messages/SetUrlDataSourceMessage;->mVideoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->setDataSource(Ljava/lang/String;)V

    return-void
.end method
