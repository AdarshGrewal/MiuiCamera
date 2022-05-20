.class public interface abstract Lcom/android/camera/module/common/IUserEventMgr;
.super Ljava/lang/Object;
.source "IUserEventMgr.java"


# virtual methods
.method public abstract enableCameraControls(Z)V
.end method

.method public abstract isIgnoreTouchEvent()Z
.end method

.method public abstract isReceiveDoubleTap()Z
.end method

.method public abstract onActionStop()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onDoubleTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onGestureTrack(Landroid/graphics/RectF;Z)Z
.end method

.method public abstract onGradienterSwitched(Z)V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onLongPress(FF)V
.end method

.method public abstract onPreviewLayoutChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onPreviewSizeChanged(II)V
.end method

.method public abstract onScale(FFF)Z
.end method

.method public abstract onScaleBegin(FF)Z
.end method

.method public abstract onScaleEnd()V
.end method

.method public abstract onShineChanged(I)V
.end method

.method public abstract onSingleTapUp(IIZ)V
.end method

.method public abstract onUserInteraction()V
.end method

.method public abstract setRectAndUIStyle(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
.end method

.method public abstract showLensDirtyTip()V
.end method

.method public abstract updateLensDirtyDetect(Z)V
.end method

.method public varargs abstract updatePreferenceInWorkThread([I)V
.end method

.method public varargs abstract updatePreferenceTrampoline([I)V
.end method

.method public abstract updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;)V
.end method
