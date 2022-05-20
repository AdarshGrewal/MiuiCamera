.class public Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;
.super Lcom/android/camera/videoplayer/ui/SimpleMainThreadMediaPlayerListener;
.source "BaseVideoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/clone/BaseVideoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoPlayerListener"
.end annotation


# instance fields
.field public final videoViewHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/fragment/clone/VideoViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/fragment/clone/VideoViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/videoplayer/ui/SimpleMainThreadMediaPlayerListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;->videoViewHolder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onVideoPreparedMainThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;->videoViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/clone/VideoViewHolder;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onVideoStoppedMainThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/clone/BaseVideoItem$VideoPlayerListener;->videoViewHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/clone/VideoViewHolder;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/android/camera/fragment/clone/VideoViewHolder;->mCover:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
