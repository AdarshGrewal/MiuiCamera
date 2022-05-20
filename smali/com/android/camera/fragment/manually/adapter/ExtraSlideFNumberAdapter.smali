.class public Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;
.super Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;
.source "ExtraSlideFNumberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ENTRY_COUNT_TOTAL:I

.field public static final F_NUMBERS:[Ljava/lang/String;


# instance fields
.field public mCurrentValue:Ljava/lang/String;

.field public mDataItemFeature:LOooO00o/OooO0Oo/OooO00o/OooO0O0;

.field public mEnable:Z

.field public mManuallyListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

.field public mValidFNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const-string v0, "1.0"

    const-string v1, "1.1"

    const-string v2, "1.2"

    const-string v3, "1.4"

    const-string v4, "1.6"

    const-string v5, "1.8"

    const-string v6, "2.0"

    const-string v7, "2.2"

    const-string v8, "2.5"

    const-string v9, "2.8"

    const-string v10, "3.2"

    const-string v11, "3.5"

    const-string v12, "4.0"

    const-string v13, "4.5"

    const-string v14, "5.0"

    const-string v15, "5.6"

    const-string v16, "6.3"

    const-string v17, "7.1"

    const-string v18, "8.0"

    const-string v19, "9.0"

    const-string v20, "10"

    const-string v21, "11"

    const-string v22, "13"

    const-string v23, "14"

    const-string v24, "16"

    .line 1
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->F_NUMBERS:[Ljava/lang/String;

    .line 2
    array-length v0, v0

    sput v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->ENTRY_COUNT_TOTAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/fragment/manually/ZoomValueListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/manually/adapter/AbstractZoomSliderAdapter;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    .line 3
    sget-object p3, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->F_NUMBERS:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mValidFNumbers:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mCurrentValue:Ljava/lang/String;

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mDataItemFeature:LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->initStyle(Landroid/content/Context;)V

    return-void
.end method

.method private isFlagPosition(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->F_NUMBERS:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mDataItemFeature:LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->F_NUMBERS:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public draw(ILandroid/graphics/Canvas;ZIF)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->draw(ILandroid/graphics/Canvas;ZIF)V

    if-eqz p3, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineStopPointWidth:I

    neg-int p3, p1

    div-int/lit8 p3, p3, 0x2

    int-to-float v1, p3

    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineSelectHalfHeight:F

    neg-float v2, v4

    div-int/lit8 p1, p1, 0x2

    int-to-float v3, p1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mSelectPaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->isFlagPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineStopPointWidth:I

    neg-int p3, p1

    div-int/lit8 p3, p3, 0x2

    int-to-float v1, p3

    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    neg-float v2, v4

    div-int/lit8 p1, p1, 0x2

    int-to-float v3, p1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mStopPointPaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineWidth:I

    neg-int p3, p1

    div-int/lit8 p3, p3, 0x2

    int-to-float v1, p3

    iget v4, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mCurrentLineHalfHeight:F

    neg-float v2, v4

    div-int/lit8 p1, p1, 0x2

    int-to-float v3, p1

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mNormalPaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getAlign(I)Landroid/graphics/Paint$Align;
    .locals 0

    .line 1
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    sget v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->ENTRY_COUNT_TOTAL:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic mapPositionToValue(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mapPositionToValue(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mapPositionToValue(F)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 4
    sget-object v0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->F_NUMBERS:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public bridge synthetic mapValueToPosition(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public mapValueToPosition(Ljava/lang/String;)F
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mValidFNumbers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public measureWidth(I)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->isFlagPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineStopPointWidth:I

    :goto_0
    int-to-float p1, p1

    return p1

    .line 3
    :cond_0
    iget p1, p0, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->mLineWidth:I

    goto :goto_0
.end method

.method public onChangeValue(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onPositionSelect(Landroid/view/View;IFI)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mEnable:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p3, p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->getCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    :cond_2
    int-to-float p1, p2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mapPositionToValue(F)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 5
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    if-eqz p3, :cond_3

    const/4 p4, 0x3

    .line 6
    invoke-interface {p3, p1, p4}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onManuallyDataChanged(Ljava/lang/String;I)V

    .line 7
    iget-object p3, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mManuallyListener:Lcom/android/camera/fragment/manually/ZoomValueListener;

    const/4 p4, 0x0

    invoke-interface {p3, p2, p4}, Lcom/android/camera/fragment/manually/ZoomValueListener;->onZoomItemSlideOn(IZ)V

    .line 8
    :cond_3
    iput-object p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mCurrentValue:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/manually/adapter/ExtraSlideFNumberAdapter;->mEnable:Z

    return-void
.end method
