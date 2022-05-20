.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;
.super Ljava/lang/Object;
.source "FuAvatarInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setTargetPosition(DDDDI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

.field public final synthetic val$angle:D

.field public final synthetic val$renderNum:I

.field public final synthetic val$x:D

.field public final synthetic val$y:D

.field public final synthetic val$z:D


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;DDDDI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iput-wide p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$x:D

    iput-wide p4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$y:D

    iput-wide p6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$z:D

    iput-wide p8, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$angle:D

    iput p10, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$renderNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [D

    iget-wide v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$x:D

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    iget-wide v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$y:D

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    iget-wide v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$z:D

    const/4 v5, 0x2

    aput-wide v3, v2, v5

    const-string/jumbo v3, "target_position"

    invoke-static {v1, v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    iget-wide v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$angle:D

    const-string/jumbo v4, "target_angle"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->val$renderNum:I

    int-to-double v2, v2

    const-string/jumbo v4, "reset_all"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    return-void
.end method
