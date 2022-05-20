.class public Lnet/majorkernelpanic/streaming/video/VideoStream$1;
.super Ljava/lang/Object;
.source "VideoStream.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/video/VideoStream;->setSurfaceView(Lnet/majorkernelpanic/streaming/gl/SurfaceView;)V
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
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$1;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "VideoStream"

    const-string p2, "Surface Changed !"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$1;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceReady:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream$1;->this$0:Lnet/majorkernelpanic/streaming/video/VideoStream;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSurfaceReady:Z

    .line 2
    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/video/VideoStream;->stopPreview()V

    const-string p1, "VideoStream"

    const-string v0, "Surface destroyed !"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
