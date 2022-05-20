.class public Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/videoplayer/ui/VideoPlayerView;->onErrorMainThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

.field public final synthetic val$extra:I

.field public final synthetic val$what:I


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/ui/VideoPlayerView;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    iput p2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->val$what:I

    iput p3, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->this$0:Lcom/android/camera/videoplayer/ui/VideoPlayerView;

    invoke-static {v0}, Lcom/android/camera/videoplayer/ui/VideoPlayerView;->access$000(Lcom/android/camera/videoplayer/ui/VideoPlayerView;)Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->val$what:I

    iget v2, p0, Lcom/android/camera/videoplayer/ui/VideoPlayerView$3;->val$extra:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/videoplayer/ui/VideoPlayerView$BackgroundThreadMediaPlayerListener;->onErrorBackgroundThread(II)V

    return-void
.end method
