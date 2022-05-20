.class public Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;
.super Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;
.source "FragmentDollyZoomProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureVideoCallback"
.end annotation


# instance fields
.field public mDollyZoomProcess:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;->mDollyZoomProcess:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$TextureVideoCallback;->mDollyZoomProcess:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->access$000(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->access$100(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerAdapter;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
