.class public Lcom/android/camera/module/FunModule$EncoderListener;
.super Ljava/lang/Object;
.source "FunModule.java"

# interfaces
.implements Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FunModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderListener"
.end annotation


# instance fields
.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/FunModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule$EncoderListener;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onStopped(Lcom/android/camera/module/encoder/MediaEncoder;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/VideoBase;->TAG:Ljava/lang/String;

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
    iget-object p1, p0, Lcom/android/camera/module/FunModule$EncoderListener;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/FunModule;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/camera/module/FunModule;->executeSaveTask(Z)V

    :cond_0
    return-void
.end method
