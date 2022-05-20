.class public Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$5;
.super Ljava/lang/Object;
.source "FragmentFilmDreamProcess.java"

# interfaces
.implements Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->initTextureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$5;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$5;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$400(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Z)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onError:"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onInfo:"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$5;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$500(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$5;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$502(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$5;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$600(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method
