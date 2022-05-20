.class public Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;
.super Landroid/os/Handler;
.source "WideSelfieEngineWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;-><init>(Landroid/content/Context;ILcom/android/camera/wideselfie/WideSelfieEngineWrapper$WideSelfStateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;


# direct methods
.method public constructor <init>(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    .line 4
    iget-object v0, p0, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper$1;->this$0:Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;

    invoke-static {v0, p1}, Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;->access$000(Lcom/android/camera/wideselfie/WideSelfieEngineWrapper;[B)V

    :goto_0
    return-void
.end method
