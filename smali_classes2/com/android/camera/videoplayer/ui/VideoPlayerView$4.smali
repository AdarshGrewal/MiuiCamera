.class public Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/videoplayer/ui/VideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$200(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">> run, onVideoSizeAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$200(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVideoSizeAvailable, mReadyForPlaybackIndicator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v3}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v2}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getContentHeight()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v3}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getContentWidth()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$200(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "run, onVideoSizeAvailable, notifyAll"

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$200(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<< run, onVideoSizeAvailable"

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$000(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$000(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v1}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getContentHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$4;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v2}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getContentWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;->onVideoSizeChangedBackgroundThread(II)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
