.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$000(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$102(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$000(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Ljava/util/concurrent/Semaphore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$102(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$000(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$102(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;->access$200(Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/camera2/Camera2Helper;)V

    return-void
.end method
