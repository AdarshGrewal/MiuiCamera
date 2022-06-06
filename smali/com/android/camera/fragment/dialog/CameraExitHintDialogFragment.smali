.class public Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "CameraExitHintDialogFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/dialog/BaseDialogFragment;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final DELAY_COUNT:I = 0x3

.field public static final EXIT_TYPE_CAMERA_ONCE:I = 0x1

.field public static final EXIT_TYPE_CAMERA_TWICE:I = 0x2

.field public static final EXIT_TYPE_THERMAL:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CameraExitHint"


# instance fields
.field public mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

.field public mDumpNativeBackTrace:Z

.field public mTextView:Landroid/widget/TextView;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mType:I

    return-void
.end method

.method private onTimerFinish()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/camera/Util;->onCameraErrorFinish(Landroid/app/Activity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setText(I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const v0, 0x7f10000e

    goto :goto_0

    :cond_1
    const v0, 0x7f10000f

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x3f

    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->onTimerFinish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 p3, 0x0

    const v0, 0x7f0d0065

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00ac

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p3}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const p2, 0x7f0a00ab

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/Display;->getCenterDisplayWidth()I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 p2, 0x3

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->setText(I)V

    return-object p1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->onTimerFinish()V

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->setText(I)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    invoke-virtual {v0}, Lcom/android/camera/timerburst/CameraTimer;->dispose()V

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->onTimerFinish()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget p1, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mType:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mDumpNativeBackTrace:Z

    invoke-static {p1, v0}, Lcom/android/camera/Util;->onCameraError(Landroid/app/Activity;Z)V

    :cond_0
    new-instance p1, Lcom/android/camera/timerburst/CameraTimer;

    invoke-direct {p1}, Lcom/android/camera/timerburst/CameraTimer;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    invoke-virtual {p1, p2}, Lcom/android/camera/timerburst/CameraTimer;->setCount(I)Lcom/android/camera/timerburst/CameraTimer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/timerburst/CameraTimer;->setRepeatTimes(I)Lcom/android/camera/timerburst/CameraTimer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/timerburst/CameraTimer;->setStartDelay(I)Lcom/android/camera/timerburst/CameraTimer;

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mCameraTimer:Lcom/android/camera/timerburst/CameraTimer;

    invoke-virtual {p1, p0}, Lcom/android/camera/timerburst/CameraTimer;->start(Lio/reactivex/Observer;)V

    return-void
.end method

.method public setDumpNativeBackTrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mDumpNativeBackTrace:Z

    return-void
.end method

.method public setErrorType(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/dialog/CameraExitHintDialogFragment;->mType:I

    return-void
.end method
