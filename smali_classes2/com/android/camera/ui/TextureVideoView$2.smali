.class public Lcom/android/camera/ui/TextureVideoView$2;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/TextureVideoView;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/TextureVideoView;

.field public final synthetic val$surface:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/TextureVideoView;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/TextureVideoView$2;->this$0:Lcom/android/camera/ui/TextureVideoView;

    iput-object p2, p0, Lcom/android/camera/ui/TextureVideoView$2;->val$surface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView$2;->this$0:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0}, Lcom/android/camera/ui/TextureVideoView;->access$000(Lcom/android/camera/ui/TextureVideoView;)Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/TextureVideoView$2;->this$0:Lcom/android/camera/ui/TextureVideoView;

    invoke-static {v0}, Lcom/android/camera/ui/TextureVideoView;->access$000(Lcom/android/camera/ui/TextureVideoView;)Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/TextureVideoView$2;->val$surface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method
