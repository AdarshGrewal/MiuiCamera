.class public Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "BaseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;,
        Lcom/android/camera/fragment/dialog/BaseDialogFragment$MyOnGestureListener;
    }
.end annotation


# static fields
.field public static final STATE_HIDE:I = -0x1

.field public static final STATE_SHOW:I = 0x1


# instance fields
.field public gesture:Landroid/view/GestureDetector;

.field public mDismissCallback:Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->gesture:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public adjustViewHeight(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method public canProvide()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBgColor()I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe5

    .line 1
    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public initViewOnTouchListener(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/dialog/BaseDialogFragment$MyOnGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/fragment/dialog/BaseDialogFragment$MyOnGestureListener;-><init>(Lcom/android/camera/fragment/dialog/BaseDialogFragment;Lcom/android/camera/fragment/dialog/BaseDialogFragment$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->gesture:Landroid/view/GestureDetector;

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OoooO0/OooO00o;-><init>(Lcom/android/camera/fragment/dialog/BaseDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 7
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    invoke-static {}, Lcom/android/camera/display/Display;->isContentViewExtendToTopEdges()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCutoutModeShortEdges(Landroid/view/Window;)V

    .line 12
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->getBgColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/Camera;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/Camera;->showNewNotification()V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraScreenNail;->drawBlackFrame(Z)V

    :cond_0
    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->mDismissCallback:Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setDismissCallback(Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->mDismissCallback:Lcom/android/camera/fragment/dialog/BaseDialogFragment$DismissCallback;

    return-void
.end method
