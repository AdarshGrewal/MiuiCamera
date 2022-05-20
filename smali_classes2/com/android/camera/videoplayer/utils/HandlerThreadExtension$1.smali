.class public Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$1;
.super Ljava/lang/Object;
.source "HandlerThreadExtension.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;-><init>(Ljava/lang/String;Z)V
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
    iput-object p1, p0, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension$1;->this$0:Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/videoplayer/utils/HandlerThreadExtension;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uncaughtException, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
