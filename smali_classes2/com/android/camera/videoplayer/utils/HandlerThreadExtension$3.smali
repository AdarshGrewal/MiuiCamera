.class public Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$3;
.super Ljava/lang/Object;
.source "HandlerThreadExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->postQuit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;


# direct methods
.method public constructor <init>(Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$3;->this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "postQuit, run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
