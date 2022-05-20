.class public Lcom/android/camera/fragment/vv/FragmentVVProcess$7;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->initTextureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

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
    iget-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$600(Lcom/android/camera/fragment/vv/FragmentVVProcess;Z)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$700(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$702(Lcom/android/camera/fragment/vv/FragmentVVProcess;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$800(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object v0

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/TextureVideoView;->setVideoSpecifiedSize(II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$7;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$900(Lcom/android/camera/fragment/vv/FragmentVVProcess;Landroid/view/Surface;)V

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
