.class public Lcom/android/camera/videoplayer/ui/VideoPlayerView$1;
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
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$1;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$1;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$000(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$1;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v1}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getContentHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$1;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-virtual {v2}, Lcom/android/camera/videoplayer/ui/ScalableTextureView;->getContentWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;->onVideoSizeChangedBackgroundThread(II)V

    return-void
.end method
