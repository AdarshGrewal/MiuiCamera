.class public Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager$3;
.super Ljava/lang/Object;
.source "MimojiPageChangeAnimManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->translateYEditLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager$3;->this$0:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;->access$200(Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiPageChangeAnimManager;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
