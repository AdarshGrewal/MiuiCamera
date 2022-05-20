.class public Lcom/android/camera/module/Camera2Module$24;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Lcom/xiaomi/camera/core/IResultDataCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Camera2Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$24;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultDataReceived(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/android/camera/module/Camera2Module$24;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "died while receive result data from postprocessor"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p2, 0xa

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    check-cast p3, Lcom/xiaomi/engine/ResultData;

    .line 4
    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getTimeStamp()J

    move-result-wide v1

    .line 5
    invoke-static {}, Lcom/android/camera/module/Camera2Module;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "get anchor timestamp "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$24;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;

    move-result-object v0

    iget-object p1, p0, Lcom/android/camera/module/Camera2Module$24;->this$0:Lcom/android/camera/module/Camera2Module;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mPreviewSize:Lcom/android/camera/CameraSize;

    iget v3, p1, Lcom/android/camera/CameraSize;->width:I

    iget v4, p1, Lcom/android/camera/CameraSize;->height:I

    const/4 v5, 0x0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/zxing/CacheImageDecoder;->saveAnchorFrameThumbnail(JII[ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
