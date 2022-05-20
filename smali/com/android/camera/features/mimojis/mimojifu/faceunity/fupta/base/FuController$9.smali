.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$9;
.super Ljava/lang/Object;
.source "FuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedRenderCamera(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

.field public final synthetic val$needRenderCamera:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$9;->val$needRenderCamera:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$9;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$9;->val$needRenderCamera:Z

    if-eqz v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "enable_render_camera"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method
