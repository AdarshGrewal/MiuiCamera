.class public Lcom/android/camera/ui/SeekBarCompat;
.super Landroid/widget/SeekBar;
.source "SeekBarCompat.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/camera/animation/IFolmeClean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;,
        Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;,
        Lcom/android/camera/ui/SeekBarCompat$SeekBarMode;
    }
.end annotation


# static fields
.field public static final CENTER_SEEKBAR:I = 0x2

.field public static final INTERVAL:I = 0x5

.field public static final NORMAL_SEEKBAR:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAvaliableWidth:F

.field public mBackgroundPaint:Landroid/graphics/Paint;

.field public mBigCircleRadius:F

.field public mCenterTwoWayMode:Z

.field public mCirclePaint:Landroid/graphics/Paint;

.field public mCircleRadius:F

.field public mClearGap:I

.field public mClearPaint:Landroid/graphics/Paint;

.field public mCurrentCircleRadius:F

.field public mDownX:F

.field public mIsRTL:Z

.field public mLineWidth:F

.field public mOnSeekBarCompatTouchListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;

.field public mPinPointPaint:Landroid/graphics/Paint;

.field public mPinProgress:I

.field public mPinProgressPaint:Landroid/graphics/Paint;

.field public mPinProgressRectF:Landroid/graphics/RectF;

.field public mPinRadius:F

.field public mProgressProperty:Lmiuix/animation/property/ViewProperty;

.field public mRadiusProperty:Lmiuix/animation/property/ViewProperty;

.field public mScaleObject:Ljava/lang/Object;

.field public mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

.field public mStyle:Lmiuix/animation/IStateStyle;

.field public mTouchRect:Landroid/graphics/Rect;

.field public mUserLastSeekPoint:I

.field public mUserSeek:Z

.field public mVisualProgress:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/SeekBarCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/SeekBarCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/ui/SeekBarCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/ui/SeekBarCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/SeekBarCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mScaleObject:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    .line 7
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    .line 8
    new-instance p2, Lcom/android/camera/ui/SeekBarCompat$1;

    const-string/jumbo p3, "scroll_progress"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/ui/SeekBarCompat$1;-><init>(Lcom/android/camera/ui/SeekBarCompat;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mProgressProperty:Lmiuix/animation/property/ViewProperty;

    .line 9
    new-instance p2, Lcom/android/camera/ui/SeekBarCompat$2;

    const-string/jumbo p3, "radius"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/ui/SeekBarCompat$2;-><init>(Lcom/android/camera/ui/SeekBarCompat;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mRadiusProperty:Lmiuix/animation/property/ViewProperty;

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SeekBarCompat;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/SeekBarCompat;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/ui/SeekBarCompat;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/SeekBarCompat;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/SeekBarCompat;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    return p1
.end method

.method private contains(III)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p2, p3, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le p1, v1, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4
    invoke-virtual {p0, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/widget/SeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    const p1, 0x3fe8b439    # 1.818f

    .line 6
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x80000000

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mClearPaint:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mClearPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    .line 16
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p1, 0x413451ec    # 11.27f

    .line 20
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    const p1, 0x4182e148    # 16.36f

    .line 21
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    .line 22
    iget p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    .line 25
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    .line 29
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 33
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    .line 34
    iget p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    add-float/2addr p1, v3

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    const p1, 0x400b9581    # 2.181f

    .line 35
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    return-void
.end method

.method private startAnimator(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    :goto_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const-string v3, "SeekBar"

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/ui/SeekBarCompat;->mRadiusProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    .line 3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/ui/SeekBarCompat;->mRadiusProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v0

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, -0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 5
    invoke-virtual {p1, v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v4, v3

    .line 7
    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private startScroll(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mStyle:Lmiuix/animation/IStateStyle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/view/View;

    aput-object p0, v0, v2

    .line 2
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-string v4, "SeekBar"

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/ui/SeekBarCompat;->mProgressProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    .line 3
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/ui/SeekBarCompat;->mProgressProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    int-to-float p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v1

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 5
    invoke-virtual {p1, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->setFromSpeed(F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v4, v3

    .line 7
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mStyle:Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 8
    iget-object v4, p0, Lcom/android/camera/ui/SeekBarCompat;->mProgressProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v3, v2

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-interface {v0, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e19999a    # 0.15f
    .end array-data
.end method


# virtual methods
.method public clean()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/camera/ui/SeekBarCompat;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    return-void
.end method

.method public getNextProgress(F)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 3
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    sub-float/2addr p1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    goto :goto_0

    :cond_2
    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    goto :goto_0

    :cond_4
    div-float/2addr p1, v0

    .line 6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 7
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int p1, v0, p1

    .line 9
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 10
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    sub-int/2addr p1, v0

    sub-int/2addr v1, v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    :goto_1
    return p1
.end method

.method public getPinProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    return v0
.end method

.method public getTouchRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCenterTwoWayMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    return v0
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v9, v2, 0x2

    .line 2
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    const/4 v10, 0x0

    cmpl-float v2, v2, v10

    const/high16 v11, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    mul-float/2addr v3, v11

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    .line 4
    :cond_0
    iget-boolean v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v2, :cond_1

    .line 5
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0

    .line 6
    :cond_1
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    :goto_0
    move v12, v2

    .line 7
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    iget-boolean v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_2
    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    :goto_1
    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    add-float v13, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v14

    .line 9
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    sub-float v3, v2, v3

    int-to-float v15, v9

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v2, v11

    sub-float v4, v15, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    sub-float/2addr v2, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    add-float/2addr v5, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v2, v11

    add-float v6, v15, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    iget-object v9, v1, Lcom/android/camera/ui/SeekBarCompat;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 10
    iget-boolean v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mIsRTL:Z

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_9

    .line 11
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    sub-float/2addr v5, v6

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    add-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 12
    iget-boolean v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v2, :cond_5

    .line 13
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_3

    .line 14
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    add-float/2addr v5, v13

    iput v5, v2, Landroid/graphics/RectF;->left:F

    goto :goto_2

    .line 15
    :cond_3
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpl-float v2, v12, v2

    if-lez v2, :cond_4

    .line 16
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    sub-float v5, v13, v5

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 17
    :cond_4
    :goto_2
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    sget-object v2, Lcom/android/camera/ui/SeekBarCompat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 19
    :cond_5
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_6

    .line 20
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 21
    :cond_6
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    :goto_3
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v12

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 23
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v4, v11

    sub-float v4, v15, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 24
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v4, v11

    add-float/2addr v4, v15

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 25
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v10, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 26
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    if-eqz v2, :cond_7

    .line 27
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13, v15, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    :cond_7
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    if-nez v2, :cond_8

    .line 29
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    .line 30
    :cond_8
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v12

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float/2addr v6, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v5, v5

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v12

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float/2addr v7, v8

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v5, v5

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v6

    .line 33
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v12

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v3, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float v4, v15, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v5, v2

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v12

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float/2addr v2, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v2, v5

    int-to-float v5, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float v6, v15, v2

    iget-object v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 36
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 37
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v12

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v11

    sub-float/2addr v3, v4

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 38
    :cond_9
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mCircleRadius:F

    sub-float/2addr v5, v6

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 39
    iget-boolean v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v2, :cond_c

    .line 40
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_a

    .line 41
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    sub-float v5, v13, v5

    iput v5, v2, Landroid/graphics/RectF;->left:F

    goto :goto_4

    .line 42
    :cond_a
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpl-float v2, v12, v2

    if-lez v2, :cond_b

    .line 43
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    add-float/2addr v5, v13

    iput v5, v2, Landroid/graphics/RectF;->left:F

    .line 44
    :cond_b
    :goto_4
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    sget-object v2, Lcom/android/camera/ui/SeekBarCompat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current progress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 46
    :cond_c
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    int-to-float v2, v2

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_d

    .line 47
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 48
    :cond_d
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    :goto_5
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v5, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 50
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v4, v11

    sub-float v4, v15, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 51
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mLineWidth:F

    div-float/2addr v4, v11

    add-float/2addr v4, v15

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 52
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressRectF:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v10, v10, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 53
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    if-eqz v2, :cond_e

    .line 54
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinRadius:F

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mPinPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v13, v15, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 55
    :cond_e
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    if-nez v2, :cond_f

    .line 56
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    .line 57
    :cond_f
    iget-object v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mTouchRect:Landroid/graphics/Rect;

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v4, v4

    iget v6, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v6, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float/2addr v6, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v5, v5

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v7, v12

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float/2addr v7, v8

    iget v8, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v5, v5

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v6

    .line 60
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v2, v2

    iget v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v4, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float/2addr v4, v5

    iget v5, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v3, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    sub-float v4, v15, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    float-to-double v5, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v2, v12

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float/2addr v2, v7

    iget v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearGap:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-int v2, v5

    int-to-float v5, v2

    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    add-float v6, v15, v2

    iget-object v7, v1, Lcom/android/camera/ui/SeekBarCompat;->mClearPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    .line 63
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 64
    iget v2, v1, Lcom/android/camera/ui/SeekBarCompat;->mBigCircleRadius:F

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mAvaliableWidth:F

    mul-float/2addr v12, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v12, v3

    add-float/2addr v2, v12

    iget v3, v1, Lcom/android/camera/ui/SeekBarCompat;->mCurrentCircleRadius:F

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v11

    sub-float/2addr v3, v4

    iget-object v4, v1, Lcom/android/camera/ui/SeekBarCompat;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v15, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 65
    :goto_6
    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0()V

    .line 3
    iput p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserSeek:Z

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    iget v1, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    invoke-direct {p0, v0, p2, v1}, Lcom/android/camera/ui/SeekBarCompat;->contains(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0Oo/OooO0Oo;->OooO0O0()V

    .line 7
    :cond_1
    iput p2, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    if-eqz v0, :cond_4

    .line 9
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v0, :cond_3

    .line 10
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    sub-int/2addr p2, v0

    :cond_3
    if-eqz p3, :cond_4

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    return v3

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserSeek:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserSeek:Z

    .line 6
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->getNextProgress(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->startScroll(I)V

    goto :goto_0

    .line 7
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserSeek:Z

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->getNextProgress(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->startScroll(I)V

    .line 9
    invoke-direct {p0, v2}, Lcom/android/camera/ui/SeekBarCompat;->startAnimator(Z)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/camera/ui/SeekBarCompat;->startAnimator(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mUserLastSeekPoint:I

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mDownX:F

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->getNextProgress(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/SeekBarCompat;->startScroll(I)V

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mOnSeekBarCompatTouchListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 16
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_7

    if-eq p1, v1, :cond_7

    return v2

    .line 17
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 19
    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBarCompat;->getTouchRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 20
    invoke-virtual {v1, p1, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    .line 21
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/SeekBarCompat;->getNextProgress(F)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V

    return v3
.end method

.method public setCenterTwoWayMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mSeekBarCompatChangeListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;

    return-void
.end method

.method public setOnSeekBarCompatTouchListener(Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mOnSeekBarCompatTouchListener:Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(IZ)V
    .locals 7

    monitor-enter p0

    if-nez p2, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mStyle:Lmiuix/animation/IStateStyle;

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_0
    int-to-float v0, p1

    .line 5
    iput v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mVisualProgress:F

    .line 6
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mCenterTwoWayMode:Z

    if-eqz v0, :cond_2

    .line 8
    iget v0, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    add-int/2addr p1, v0

    :cond_2
    if-nez p2, :cond_3

    .line 9
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_3
    :try_start_1
    const-class p2, Landroid/widget/ProgressBar;

    const-string/jumbo v0, "setProgressInternal"

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    .line 11
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 12
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSeekBarPinProgress(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result v1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgress:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/SeekBarCompat;->mPinProgressPaint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
