.class public Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusCommonAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->start3ALockSuccessAnimation()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$4;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget-object p1, p1, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/CameraPaintBase;->setTargetWidthPercent(F)Lcom/android/camera/ui/drawable/CameraPaintBase;

    return-void
.end method
