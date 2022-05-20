.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomRatioToggleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/zoom/ZoomRatioToggleView;->startTranslationAnimationShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

.field public final synthetic val$translationX:F

.field public final synthetic val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/zoom/ZoomRatioToggleView;Lcom/android/camera/ui/zoom/ZoomRatioView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->this$0:Lcom/android/camera/ui/zoom/ZoomRatioToggleView;

    iput-object p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    iput p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->val$translationX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->val$zoomRatioView:Lcom/android/camera/ui/zoom/ZoomRatioView;

    iget v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$6;->val$translationX:F

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method
