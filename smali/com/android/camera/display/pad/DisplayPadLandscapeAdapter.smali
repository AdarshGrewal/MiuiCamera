.class public Lcom/android/camera/display/pad/DisplayPadLandscapeAdapter;
.super Lcom/android/camera/display/pad/DisplayBasePadAdapter;
.source "DisplayPadLandscapeAdapter.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/display/DisplayParameter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/display/pad/DisplayBasePadAdapter;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    return-void
.end method


# virtual methods
.method public getCenterDisplayHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/pad/DisplayBasePadAdapter;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    return v0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/display/pad/DisplayBasePadAdapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getDragLayoutTopMargin()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/pad/DisplayBasePadAdapter;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    invoke-virtual {p0}, Lcom/android/camera/display/pad/DisplayBasePadAdapter;->getBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMarginStart()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/pad/DisplayBasePadAdapter;->mDisplayParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

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

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705b2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/display/pad/DisplayPadLandscapeAdapter;->getMoreModeTabRow(IZ)I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0705b4

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
