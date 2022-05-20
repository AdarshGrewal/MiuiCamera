.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;
.super Ljava/lang/Object;
.source "FuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$900(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setArMode(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$11;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget v2, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->setArMode(IZ)V

    :cond_0
    return-void
.end method
