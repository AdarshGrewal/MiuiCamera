.class public Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$1;
.super Lmiuix/view/animation/CubicEaseOutInterpolator;
.source "CameraFocusCommonAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->startTouchDownAnimation()V
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
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/view/animation/CubicEaseOutInterpolator;->getInterpolation(F)F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    iget-object v0, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;->mPaintOuterRect:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->updateValue(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusCommonAnimateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method
