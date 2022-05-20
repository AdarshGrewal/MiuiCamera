.class public Lmiuix/blurdrawable/widget/MiBlurBackgroundView;
.super Landroid/widget/FrameLayout;
.source "MiBlurBackgroundView.java"


# instance fields
.field public mBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/blurdrawable/widget/MiBlurBackgroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-direct {p0, p1}, Lmiuix/blurdrawable/widget/MiBlurBackgroundView;->addBlurView(Landroid/content/Context;)V

    return-void
.end method

.method private addBlurView(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-direct {v0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/blurdrawable/widget/MiBlurBackgroundView;->mBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    iget-object v0, p0, Lmiuix/blurdrawable/widget/MiBlurBackgroundView;->mBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lmiuix/blurdrawable/widget/MiBlurBackgroundView;->mBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 5
    invoke-virtual {p0, v0}, Lmiuix/blurdrawable/widget/MiBlurBackgroundView;->setBlurBackground(Z)Z

    return-void
.end method


# virtual methods
.method public isSearchStubSupportBlur()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/blurdrawable/widget/MiBlurBackgroundView;->mBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-virtual {v0}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBlurBackground(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/blurdrawable/widget/MiBlurBackgroundView;->mBackgroundView:Lmiuix/blurdrawable/widget/BlurBackgroundView;

    invoke-virtual {v0, p1}, Lmiuix/blurdrawable/widget/BlurBackgroundView;->setBlurBackground(Z)Z

    move-result p1

    return p1
.end method
