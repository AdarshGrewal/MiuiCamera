.class public Lmiuix/appcompat/app/ProgressDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "ProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field public mHasStarted:Z

.field public mIncrementBy:I

.field public mIncrementSecondaryBy:I

.field public mIndeterminate:Z

.field public mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field public mMax:I

.field public mMessage:Ljava/lang/CharSequence;

.field public mMessageView:Landroid/widget/TextView;

.field public mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

.field public mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field public mProgressNumberFormat:Ljava/lang/String;

.field public mProgressPercentFormat:Ljava/text/NumberFormat;

.field public mProgressPercentView:Landroid/widget/TextView;

.field public mProgressStyle:I

.field public mProgressVal:I

.field public mSecondaryProgressVal:I

.field public mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    .line 6
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->initFormats()V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/ProgressDialog;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/appcompat/app/ProgressDialog;)Ljava/text/NumberFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public static synthetic access$300(Lmiuix/appcompat/app/ProgressDialog;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/ProgressDialog;)Lmiuix/androidbasewidget/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    return-object p0
.end method

.method private initFormats()V
    .locals 2

    const-string v0, "%1d/%2d"

    .line 1
    iput-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private onProgressChanged()V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lmiuix/appcompat/app/ProgressDialog;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2
    invoke-static/range {v0 .. v5}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 3
    invoke-static/range {v0 .. v5}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 1

    .line 4
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0, p3}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 8
    invoke-virtual {v0, p4}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 9
    invoke-virtual {v0, p5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    return v0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    :goto_0
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    :goto_0
    return-void
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3
    iget v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 4
    new-instance v2, Lmiuix/appcompat/app/ProgressDialog$1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/ProgressDialog$1;-><init>(Lmiuix/appcompat/app/ProgressDialog;)V

    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 5
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_horizontalProgressLayout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_progress:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6
    sget v2, Lmiuix/appcompat/R$id;->progress_percent:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentView:Landroid/widget/TextView;

    goto :goto_0

    .line 7
    :cond_0
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_progressLayout:I

    sget v4, Lmiuix/appcompat/R$layout;->miuix_appcompat_progress_dialog:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    const v2, 0x102000d

    .line 8
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/androidbasewidget/widget/ProgressBar;

    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    .line 9
    sget v2, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    if-lez v0, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 14
    :cond_1
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    if-lez v0, :cond_2

    .line 15
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 16
    :cond_2
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    if-lez v0, :cond_3

    .line 17
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setSecondaryProgress(I)V

    .line 18
    :cond_3
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementBy:I

    if-lez v0, :cond_4

    .line 19
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->incrementProgressBy(I)V

    .line 20
    :cond_4
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIncrementSecondaryBy:I

    if-lez v0, :cond_5

    .line 21
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 22
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 27
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    :cond_8
    iget-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    .line 29
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    .line 30
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStart()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->onStop()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminate:Z

    :goto_0
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lmiuix/androidbasewidget/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMax:I

    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressVal:I

    :goto_0
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgressStyle:I

    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/ProgressDialog;->mProgress:Lmiuix/androidbasewidget/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 3
    invoke-direct {p0}, Lmiuix/appcompat/app/ProgressDialog;->onProgressChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lmiuix/appcompat/app/ProgressDialog;->mSecondaryProgressVal:I

    :goto_0
    return-void
.end method
