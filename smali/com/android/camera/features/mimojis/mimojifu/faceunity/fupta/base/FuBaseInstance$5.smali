.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;
.super Ljava/lang/Object;
.source "FuBaseInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->addEmoticonTask(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

.field public final synthetic val$cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

.field public final synthetic val$fuItems:Ljava/util/List;

.field public final synthetic val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->val$fuItems:Ljava/util/List;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->val$cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    iput-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->val$fuItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->val$cameraItem:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->val$listener:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->preEmoticonTask(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance$5;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->taskComplete()V

    return-void
.end method
