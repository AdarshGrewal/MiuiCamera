.class public Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SeekBarGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekBarGradientState"
.end annotation


# instance fields
.field public mParent:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, v1, v1, p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 3
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {p0, p1, v1, p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 5
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public newSeekBarGradientDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;

    invoke-direct {v0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    return-object v0
.end method

.method public setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method
