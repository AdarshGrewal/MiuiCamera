.class public Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;
.super Ljava/lang/Object;
.source "VideoState.java"

# interfaces
.implements Lcom/android/camera/module/encoder/LiveMediaRecorder$EncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/state/VideoState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimojiEncoderListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/state/VideoState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopped(Lcom/android/camera/module/encoder/MediaEncoder;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopped: encoder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/VideoState$MimojiEncoderListener;->this$0:Lcom/android/camera/features/mimojis/commen/state/VideoState;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/state/VideoState;->onRecordStopped(Z)V

    :cond_0
    return-void
.end method
