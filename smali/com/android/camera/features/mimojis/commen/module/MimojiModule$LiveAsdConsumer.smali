.class public Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;
.super Ljava/lang/Object;
.source "MimojiModule.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/commen/module/MimojiModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveAsdConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/features/mimojis/commen/module/MimojiModule;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Lcom/android/camera/features/mimojis/commen/module/MimojiModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;->this$0:Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1500(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;->mModule:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule;->access$1600(Lcom/android/camera/features/mimojis/commen/module/MimojiModule;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/commen/module/MimojiModule$LiveAsdConsumer;->accept(Ljava/lang/Integer;)V

    return-void
.end method
