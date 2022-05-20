.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Helper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onConfigureFailed"

    invoke-static {p1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$302(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$400(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$500(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "captureRequest is null"

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
