.class public Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/videoplayer/ui/VideoPlayerView;->notifyTextureAvailable()V
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
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$200(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">> run notifyTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$400(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$400(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/videoplayer/ui/MediaPlayerWrapper;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 6
    invoke-static {}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$200(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mMediaPlayer null, cannot set surface texture"

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->setSurfaceTextureAvailable(Z)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$200(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notify ready for playback"

    invoke-static {v1, v2}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v1}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$300(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/ReadyForPlaybackIndicator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 12
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$100()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$5;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$200(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<< run notifyTextureAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/videoplayer/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
