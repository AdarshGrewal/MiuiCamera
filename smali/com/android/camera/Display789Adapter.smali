.class public Lcom/android/camera/Display789Adapter;
.super Ljava/lang/Object;
.source "Display789Adapter.java"

# interfaces
.implements Lcom/android/camera/IDisplayRect;


# instance fields
.field public final mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;


# direct methods
.method public constructor <init>(Lcom/android/camera/DisplayAdapter$DisplayParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    return-void
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    if-ne v1, p1, :cond_0

    iget p1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBackgroundLeftMargin()I
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/camera/Display;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ff33333    # 1.9f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getBottomBarHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getTopBarHeight()I

    move-result v0

    return v0
.end method

.method public getBottomHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getBottomMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getBottomBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getBottomMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterDisplayHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 1

    const-string v0, "16:10"

    return-object v0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move v0, v1

    move v2, v0

    :goto_0
    move v3, v2

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    int-to-double v3, v2

    const-wide v5, 0x40031eb851eb851fL    # 2.39

    div-double/2addr v3, v5

    double-to-int v3, v3

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    move v3, v2

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v2, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    mul-int/lit8 v3, v2, 0x9

    div-int/lit8 v3, v3, 0x10

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    :goto_1
    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v3, v2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    mul-int/lit8 v4, v3, 0x4

    div-int/2addr v4, v0

    iget v0, v2, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    move v2, v4

    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v2, v0

    invoke-direct {v4, v1, v0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",uiStyle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDisplayRect"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getDragDistanceFix()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public getDragLayoutTopMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMarginEnd()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public getMarginStart()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getTopBarHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getTopBarHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v3, v3, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getBottomBarHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v4, v4, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getBottomBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    fill-array-data p1, :array_0

    return-object p1

    :cond_0
    new-array p1, v0, [I

    fill-array-data p1, :array_1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f110043
        0x7f11003b
    .end array-data

    :array_1
    .array-data 4
        0x7f11003f
        0x7f110037
    .end array-data
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSquareBottomCoverHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getBottomHeight()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getTopMargin()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Display789Adapter;->getTopBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070791

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public getTopBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v1, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundHeight:I

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40900000    # 4.5f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/camera/Display789Adapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    return p1
.end method

.method public getTopCoverHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopMargin()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Display789Adapter;->mDisplayParameter:Lcom/android/camera/DisplayAdapter$DisplayParameter;

    iget v0, v0, Lcom/android/camera/DisplayAdapter$DisplayParameter;->appBoundWidth:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/Display789Adapter;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
