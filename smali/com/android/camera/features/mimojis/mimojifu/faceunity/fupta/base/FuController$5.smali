.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;
.super Ljava/lang/Object;
.source "FuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->addCurrentAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

.field public final synthetic val$fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;->val$fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;->val$fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$23;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$BaseFuController$RenderMode:[I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-boolean v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isAddBg:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;->val$fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setArMode(Z)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-boolean v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isNeedTrackFace:Z

    if-eqz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$000()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-boolean v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isNeedTrackFace:Z

    if-eqz v1, :cond_2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x0

    :goto_1
    const-string v3, "enable_face_processor"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_3
    return-void
.end method
