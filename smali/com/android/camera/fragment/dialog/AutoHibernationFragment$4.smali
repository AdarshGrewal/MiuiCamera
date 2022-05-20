.class public Lcom/android/camera/fragment/dialog/AutoHibernationFragment$4;
.super Ljava/lang/Object;
.source "AutoHibernationFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$4;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$4;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->access$402(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;I)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$4;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->access$000(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$4;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->access$400(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method
