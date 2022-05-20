.class public Lcom/android/camera/ui/AutoHibernationView;
.super Landroid/view/View;
.source "AutoHibernationView.java"


# instance fields
.field public mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

.field public mHeight:I

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/AutoHibernationView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/AutoHibernationView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/ui/AutoHibernationView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    .line 2
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->cancelAnimation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/AutoHibernationView;->mWidth:I

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/AutoHibernationView;->mHeight:I

    .line 5
    iget p2, p0, Lcom/android/camera/ui/AutoHibernationView;->mWidth:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz p1, :cond_1

    .line 7
    iget p2, p0, Lcom/android/camera/ui/AutoHibernationView;->mWidth:I

    int-to-float p2, p2

    iget v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->setWidthHeight(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->reset()V

    :cond_0
    return-void
.end method

.method public startRecord(JFZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->startRecord(JFZ)V

    :cond_0
    return-void
.end method

.method public startRecordForFastmotion(IFZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/AutoHibernationView;->mAutoHibernationDrawable:Lcom/android/camera/ui/drawable/AutoHibernationDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/drawable/AutoHibernationDrawable;->startRecordForFastmotion(IFZ)V

    :cond_0
    return-void
.end method
