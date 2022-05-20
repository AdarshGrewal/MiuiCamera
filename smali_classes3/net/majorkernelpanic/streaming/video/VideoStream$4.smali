.class public Lnet/majorkernelpanic/streaming/video/VideoStream$4;
.super Ljava/lang/Object;
.source "VideoStream.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/video/VideoStream;->createCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/video/VideoStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$4;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    const-string p2, "VideoStream"

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const-string p1, "Media server died !"

    .line 1
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$4;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lnet/majorkernelpanic/streaming/video/VideoStream;->mCameraOpenedManually:Z

    .line 3
    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->stop()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error unknown with the camera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
