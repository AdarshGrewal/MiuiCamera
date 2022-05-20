.class public Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "DisplayTipDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayFoldTipDialog"


# instance fields
.field public mAnimRawResId:I

.field public mExitView:Landroid/widget/FrameLayout;

.field public mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mTextView:Landroid/widget/TextView;

.field public mTipContentResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a014f

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0032

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a014f

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mExitView:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a03cd

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTextView:Landroid/widget/TextView;

    const p2, 0x7f0a0247

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 6
    iget p3, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mAnimRawResId:I

    if-lez p3, :cond_0

    .line 7
    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 10
    :cond_0
    iget p2, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTipContentResId:I

    if-lez p2, :cond_1

    .line 11
    iget-object p3, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2
    return-object p1
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnimRawResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mAnimRawResId:I

    return-void
.end method

.method public setOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTipText(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/dialog/DisplayTipDialogFragment;->mTipContentResId:I

    return-void
.end method
