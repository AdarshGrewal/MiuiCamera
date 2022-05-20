.class public Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$1;
.super Ljava/lang/Object;
.source "FragmentDollyZoomProcess.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->hideCaptureHint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$1;->this$0:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess$1;->this$0:Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;->access$200(Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
