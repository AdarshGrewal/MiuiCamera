.class public abstract Lcom/android/camera/ui/BaseHorizontalZoomView;
.super Landroid/view/View;
.source "BaseHorizontalZoomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;,
        Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;,
        Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;,
        Lcom/android/camera/ui/BaseHorizontalZoomView$AnimateState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseHorizontalZoomView"

.field public static final TOUCH_STATE_CLICK:I = 0x1

.field public static final TOUCH_STATE_IDLE:I = 0x0

.field public static final TOUCH_STATE_SCROLL:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public canPositionScroll()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isIdle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/BaseHorizontalZoomView;->canPositionScroll()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "BaseHorizontalZoomView"

    const-string v0, "cannot scroll to apply zoom value, do not process the down event."

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V
.end method

.method public setEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public abstract setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V
.end method

.method public abstract setSelection(F)V
.end method

.method public abstract setSelection(IZ)V
.end method
