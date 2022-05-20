.class public Lcom/android/camera/ui/FlashHaloView;
.super Lcom/android/camera/ui/ShapeBackGroundView;
.source "FlashHaloView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FlashHaloView"


# instance fields
.field public mHoleBottomMargin:I

.field public mHoleCornerRadius:I

.field public mHoleMarginLeft:I

.field public mHoleTopMargin:I

.field public mStateStyle:Lmiuix/animation/IStateStyle;

.field public final paint:Landroid/graphics/Paint;

.field public final path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/ShapeBackGroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    .line 4
    invoke-direct {p0}, Lcom/android/camera/ui/FlashHaloView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/ShapeBackGroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    .line 8
    invoke-direct {p0}, Lcom/android/camera/ui/FlashHaloView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/ShapeBackGroundView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0}, Lcom/android/camera/ui/FlashHaloView;->init()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/FlashHaloView;IIF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FlashHaloView;->updateHaloSize(IIF)V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleMarginLeft:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702ce

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleCornerRadius:I

    new-array v0, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 7
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private updateHaloSize(IIF)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mTotalWidth:I

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p1

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0702cd

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_1
    move v1, p2

    goto :goto_2

    .line 8
    :cond_1
    iget p2, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleMarginLeft:I

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0702d1

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v2

    sub-int/2addr v2, p2

    sub-int v1, v2, v1

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0702cc

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 14
    :goto_2
    iget v2, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleTopMargin:I

    int-to-float v3, v2

    sub-int/2addr v2, p2

    int-to-float p2, v2

    mul-float/2addr p2, p3

    sub-float/2addr v3, p2

    float-to-int p2, v3

    .line 15
    iget v2, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleBottomMargin:I

    int-to-float v3, v2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p3

    sub-float/2addr v3, v1

    float-to-int v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 16
    invoke-static {p3, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p3

    if-nez p3, :cond_4

    .line 17
    iput p2, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleTopMargin:I

    .line 18
    iput v1, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleBottomMargin:I

    .line 19
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    iget p3, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleMarginLeft:I

    int-to-float v3, p3

    int-to-float v4, p2

    sub-int/2addr p1, p3

    int-to-float v5, p1

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget p1, p0, Lcom/android/camera/ui/FlashHaloView;->mHoleCornerRadius:I

    int-to-float v7, p1

    int-to-float v8, p1

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    const-string v0, "FlashHaloView"

    const-string v1, "directly hide"

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    const/4 v0, 0x4

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public hide(Z)V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashHaloView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "alphafrom"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 6
    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v4, "alphato"

    invoke-direct {v1, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v5, 0x0

    .line 7
    invoke-virtual {v1, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v6, "scalefrom"

    invoke-direct {p1, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 9
    invoke-virtual {p1, v6, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 10
    invoke-virtual {p1, v6, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 11
    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v3, "scaleto"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 12
    invoke-virtual {v2, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 13
    invoke-virtual {v2, v3, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v6, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/16 v8, 0x10

    new-array v9, v5, [F

    const/high16 v10, 0x43960000    # 300.0f

    aput v10, v9, v4

    invoke-virtual {v7, v8, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-interface {v3, v0, v1, v6}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v1, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, -0x2

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-virtual {v3, v6, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v5, v5, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/camera/ui/FlashHaloView$4;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/FlashHaloView$4;-><init>(Lcom/android/camera/ui/FlashHaloView;)V

    aput-object v6, v5, v4

    .line 16
    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v1, v4

    .line 17
    invoke-interface {v0, p1, v2, v1}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v2, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, 0x6

    new-array v7, v5, [F

    const/high16 v8, 0x43480000    # 200.0f

    aput v8, v7, v4

    invoke-virtual {v3, v6, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v5, v5, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/camera/ui/FlashHaloView$5;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/FlashHaloView$5;-><init>(Lcom/android/camera/ui/FlashHaloView;)V

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {p1, v0, v1, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setMaskMargins(IIIILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/ShapeBackGroundView;->cancelAnimation()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p6, :cond_2

    if-ne p1, p2, :cond_0

    if-ne p3, p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p6, 0x2

    new-array p6, p6, [F

    .line 3
    fill-array-data p6, :array_0

    invoke-static {p6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p6

    iput-object p6, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 4
    invoke-virtual {p6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object p6, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object p6, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/ui/FlashHaloView$1;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/ui/FlashHaloView$1;-><init>(Lcom/android/camera/ui/FlashHaloView;IIIILandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p5, :cond_1

    .line 7
    new-instance p1, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;

    iget-object p2, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p1, p2}, Lcom/android/camera/animation/CommonAnimatorOnSubScribe;-><init>(Landroid/animation/Animator;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/ShapeBackGroundView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 9
    invoke-virtual {v7, p1, p2, p1, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 10
    invoke-virtual {p0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    invoke-direct {p0, p2, p4, p1}, Lcom/android/camera/ui/FlashHaloView;->updateHaloSize(IIF)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public show(ZZ)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlashHaloView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/IStateContainer;->clean()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v5, "alphafrom"

    invoke-direct {p2, v5}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v5, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v6, 0x0

    .line 9
    invoke-virtual {p2, v5, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 10
    new-instance v5, Lmiuix/animation/controller/AnimState;

    const-string v6, "alphato"

    invoke-direct {v5, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 11
    invoke-virtual {v5, v6, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    .line 12
    iget-object v6, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v7, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v8, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v8}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/16 v9, 0x10

    new-array v10, v0, [F

    const/high16 v11, 0x43fa0000    # 500.0f

    aput v11, v10, v4

    invoke-virtual {v8, v9, v10}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    new-array v9, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v10, Lcom/android/camera/ui/FlashHaloView$2;

    invoke-direct {v10, p0}, Lcom/android/camera/ui/FlashHaloView$2;-><init>(Lcom/android/camera/ui/FlashHaloView;)V

    aput-object v10, v9, v4

    invoke-virtual {v8, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v6, p2, v5, v7}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    if-eqz p1, :cond_2

    .line 13
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo p2, "scalefrom"

    invoke-direct {p1, p2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 14
    invoke-virtual {p1, p2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 15
    invoke-virtual {p1, p2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    .line 16
    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "scaleto"

    invoke-direct {p2, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 17
    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 18
    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 19
    iget-object v1, p0, Lcom/android/camera/ui/FlashHaloView;->mStateStyle:Lmiuix/animation/IStateStyle;

    new-array v2, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, -0x2

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-virtual {v3, v5, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/android/camera/ui/FlashHaloView$3;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/FlashHaloView$3;-><init>(Lcom/android/camera/ui/FlashHaloView;)V

    aput-object v5, v0, v4

    .line 20
    invoke-virtual {v3, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v2, v4

    .line 21
    invoke-interface {v1, p1, p2, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_3
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method public updateThemeStyle(II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result p1

    const v0, 0x7f060094

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/FlashHaloView;->paint:Landroid/graphics/Paint;

    const/16 p2, 0xcc

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
