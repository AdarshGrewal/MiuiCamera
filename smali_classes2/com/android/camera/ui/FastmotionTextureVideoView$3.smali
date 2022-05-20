.class public Lcom/android/camera/ui/FastmotionTextureVideoView$3;
.super Ljava/lang/Object;
.source "FastmotionTextureVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/FastmotionTextureVideoView;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

.field public final synthetic val$mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FastmotionTextureVideoView;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$3;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    iput-object p2, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$3;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$3;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-static {v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->access$000(Lcom/android/camera/ui/FastmotionTextureVideoView;)Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$3;->this$0:Lcom/android/camera/ui/FastmotionTextureVideoView;

    invoke-static {v0}, Lcom/android/camera/ui/FastmotionTextureVideoView;->access$000(Lcom/android/camera/ui/FastmotionTextureVideoView;)Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/FastmotionTextureVideoView$3;->val$mp:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/FastmotionTextureVideoView$MediaPlayerCallback;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
