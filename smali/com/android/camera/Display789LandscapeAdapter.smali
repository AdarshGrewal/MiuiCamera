.class public Lcom/android/camera/Display789LandscapeAdapter;
.super Lcom/android/camera/Display789Adapter;
.source "Display789LandscapeAdapter.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Display789Adapter;-><init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V

    return-void
.end method


# virtual methods
.method public getCenterDisplayHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    return v0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Display789Adapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragLayoutTopMargin()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMarginStart()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705af

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    invoke-static {}, Lcom/android/camera/Display;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Display789LandscapeAdapter;->getMoreModeTabRow(IZ)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/2addr p1, p2

    sub-int/2addr p3, p1

    add-int/lit8 p2, p2, 0x1

    div-int/2addr p3, p2

    return p3
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method
