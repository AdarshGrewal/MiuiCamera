.class public Lcom/android/camera/fragment/top/FragmentTopAlert$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentTopAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;->customToastLayoutTransition()Landroid/animation/LayoutTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
