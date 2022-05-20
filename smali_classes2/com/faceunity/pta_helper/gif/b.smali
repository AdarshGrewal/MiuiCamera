.class public final Lcom/faceunity/pta_helper/gif/b;
.super Ljava/lang/Object;
.source "GifHardEncoderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;


# direct methods
.method public constructor <init>(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoder;->close()V

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->b(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoder;

    .line 3
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->c(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->d(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5
    invoke-static {}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif record end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->e(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/faceunity/pta_helper/gif/b;->a:Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;

    invoke-static {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;->e(Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper;)Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/faceunity/pta_helper/gif/GifHardEncoderWrapper$OnRecordListener;->OnRecordEnd()V

    :cond_0
    return-void
.end method
