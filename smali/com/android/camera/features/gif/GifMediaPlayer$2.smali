.class public Lcom/android/camera/features/gif/GifMediaPlayer$2;
.super Ljava/lang/Object;
.source "GifMediaPlayer.java"

# interfaces
.implements Lcom/xiaomi/Video2GifEditer/EffectNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/GifMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/gif/GifMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnHaveFace()V
    .locals 0

    return-void
.end method

.method public OnReadyNow()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnReadyNow[]"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$100(Lcom/android/camera/features/gif/GifMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooO0OO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO00o/OooO0OO;-><init>(Lcom/android/camera/features/gif/GifMediaPlayer$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnReceiveFailed()V
    .locals 0

    return-void
.end method

.method public OnReceiveFinish()V
    .locals 0

    return-void
.end method

.method public synthetic OooO00o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-static {v0}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$200(Lcom/android/camera/features/gif/GifMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->access$202(Lcom/android/camera/features/gif/GifMediaPlayer;Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/gif/GifMediaPlayer$2;->this$0:Lcom/android/camera/features/gif/GifMediaPlayer;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :cond_0
    return-void
.end method
