.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$1;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

.field public final synthetic val$count:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$1;->val$count:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$1;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;->access$000(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$1;->val$count:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
