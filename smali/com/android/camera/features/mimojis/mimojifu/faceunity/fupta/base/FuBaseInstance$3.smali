.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$3;
.super Ljava/lang/Object;
.source "FuBaseInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->addTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

.field public final synthetic val$fuAnimItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$3;->val$fuAnimItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$3;->val$fuAnimItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->preTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskComplete()V

    return-void
.end method
