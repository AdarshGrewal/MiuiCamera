.class public Lcom/android/camera/customization/FragmentCustomTint$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FragmentCustomTint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/customization/FragmentCustomTint;->toggleMode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/customization/FragmentCustomTint;

.field public final synthetic val$currentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    iput-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->val$currentView:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 3

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/customization/FragmentCustomTint;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransitionListener begin"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v1}, Lcom/android/camera/customization/FragmentCustomTint;->access$100(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v1}, Lcom/android/camera/customization/FragmentCustomTint;->access$100(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v2}, Lcom/android/camera/customization/FragmentCustomTint;->access$200(Lcom/android/camera/customization/FragmentCustomTint;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_1

    :cond_0
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->val$currentView:Landroid/view/View;

    const v2, 0x7f0a0103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$1;->val$currentView:Landroid/view/View;

    const v0, 0x7f0a0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
