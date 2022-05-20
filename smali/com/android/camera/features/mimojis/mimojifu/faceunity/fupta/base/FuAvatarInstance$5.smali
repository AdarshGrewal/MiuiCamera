.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$5;
.super Ljava/lang/Object;
.source "FuAvatarInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->enterAR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-boolean v2, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isAddBg:Z

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->setArMode(IZ)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    return-void
.end method
