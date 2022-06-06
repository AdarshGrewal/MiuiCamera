.class public Lcom/android/camera/features/gif/FragmentGifEdit$1;
.super Ljava/lang/Object;
.source "FragmentGifEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/gif/FragmentGifEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/gif/FragmentGifEdit;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/gif/FragmentGifEdit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-static {v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->access$000(Lcom/android/camera/features/gif/FragmentGifEdit;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-static {v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->access$000(Lcom/android/camera/features/gif/FragmentGifEdit;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-static {v1}, Lcom/android/camera/features/gif/FragmentGifEdit;->access$100(Lcom/android/camera/features/gif/FragmentGifEdit;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-static {v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->access$000(Lcom/android/camera/features/gif/FragmentGifEdit;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiViewUtil;->setViewVisible(Landroid/view/View;Z)Z

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_1

    const v2, 0x7f0a01a4

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const v3, 0xfff4

    if-ne v2, v3, :cond_1

    const/16 v2, 0x14

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-static {v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->access$200(Lcom/android/camera/features/gif/FragmentGifEdit;)Lcom/android/camera/features/gif/GifMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/features/gif/FragmentGifEdit$1;->this$0:Lcom/android/camera/features/gif/FragmentGifEdit;

    invoke-static {v0}, Lcom/android/camera/features/gif/FragmentGifEdit;->access$200(Lcom/android/camera/features/gif/FragmentGifEdit;)Lcom/android/camera/features/gif/GifMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/gif/GifMediaPlayer;->setIsComposing(Z)V

    :cond_2
    return-void
.end method
