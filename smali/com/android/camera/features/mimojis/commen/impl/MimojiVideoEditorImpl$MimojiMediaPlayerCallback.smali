.class public Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;
.super Ljava/lang/Object;
.source "MimojiVideoEditorImpl.java"

# interfaces
.implements Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimojiMediaPlayerCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf9

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiFullScreenProtocol;->showPreviewCover(Z)V

    .line 4
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mimoji void onPreviewPixelsRead[pixels, width, height] bitmap mPreviewCover null"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xf8

    .line 6
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;->hideTimbreProgress()I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$302(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Z)Z

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void onBufferingUpdate[mp, percent]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mimoji void onCompletion[mp]"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji boolean onError[mp, what, extra]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$700(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "  "

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji boolean onInfo[mp, what, extra] delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$700(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->getViewIsVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$700(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object p1

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0O0/OooO00o;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO00o/OooO0O0/OooO00o;-><init>(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/TextureView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$800(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimoji boolean onInfo[mp, what, extra] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$302(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Z)Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$800(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)V

    :goto_0
    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mimoji void onPrepared[mp]"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$700(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)Lcom/android/camera/ui/TextureVideoView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    return-void
.end method

.method public onSurfaceReady(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji void onSurfaceReady[surface]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$900(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl$MimojiMediaPlayerCallback;->this$0:Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$1000(Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/impl/MimojiVideoEditorImpl;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mimoji void onVideoSizeChanged[mp, width, height]"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
