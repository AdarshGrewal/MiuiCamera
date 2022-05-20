.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$2;
.super Ljava/lang/Object;
.source "BaseFuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onCameraChange(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;

.field public final synthetic val$inputImageOrientation:I


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$2;->val$inputImageOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$2;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$2;->val$inputImageOrientation:I

    iput v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mInputImageOrientation:I

    .line 2
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnCameraChange()V

    return-void
.end method
