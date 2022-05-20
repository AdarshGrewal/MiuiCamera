.class public Lcom/android/camera/module/BaseModule$3;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/BaseModule;->showDebug(Landroid/hardware/camera2/CaptureResult;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/BaseModule;

.field public final synthetic val$isShow:Z

.field public final synthetic val$result:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/BaseModule;ZLandroid/hardware/camera2/CaptureResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/BaseModule$3;->this$0:Lcom/android/camera/module/BaseModule;

    iput-boolean p2, p0, Lcom/android/camera/module/BaseModule$3;->val$isShow:Z

    iput-object p3, p0, Lcom/android/camera/module/BaseModule$3;->val$result:Landroid/hardware/camera2/CaptureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule$3;->val$isShow:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$3;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule$3;->val$result:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/Util;->getDebugInformation(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$3;->this$0:Lcom/android/camera/module/BaseModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->showDebugInfo(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
