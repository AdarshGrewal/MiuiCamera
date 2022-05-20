.class public Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;
.super Ljava/lang/Object;
.source "WideSelfieEngineWrapper.java"

# interfaces
.implements Lcom/arcsoft/camera/wideselfie/WideSelfieCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyWideSelfieCallback"
.end annotation


# instance fields
.field public mOuterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;->mOuterRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onProcessCallback(ILcom/arcsoft/camera/wideselfie/ProcessResult;)V
    .locals 2

    const-string v0, "WideSelfieEngine"

    if-nez p2, :cond_0

    const-string/jumbo p1, "onProcessCallback data is null"

    .line 1
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$MyWideSelfieCallback;->mOuterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v1, p1, p2}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$100(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;ILcom/arcsoft/camera/wideselfie/ProcessResult;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "onProcessCallback wrapper is null"

    .line 4
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
