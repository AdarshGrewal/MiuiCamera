.class public Lcom/android/camera/timerburst/TimerBurstSeekBar;
.super Landroid/view/View;
.source "TimerBurstSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;,
        Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;
    }
.end annotation


# static fields
.field public static CIRICLE_RADIUS_MAX:F = 0.0f

.field public static CIRICLE_RADIUS_MIN:F = 0.0f

.field public static HIDE_MAX:I = 0x2

.field public static HIDE_MIN:I = 0x1

.field public static HIDE_NONE:I = 0x0

.field public static INNER_RADIUS_MAX:F = 0.0f

.field public static INNER_RADIUS_MIN:F = 0.0f

.field public static final MAX_SCALE_RATE:F = 100.0f

.field public static final NUM_RATE:F = 0.03f

.field public static OUT_RADIUS:F = 0.0f

.field public static final POSITION_X_RATE:F = 0.1f

.field public static final TEXT_MARGINTOP:I = 0xa

.field public static final TEXT_MARGINTOP_MAX:I


# instance fields
.field public isScaledUp:Z

.field public mBackgroundRectPaint:Landroid/graphics/Paint;

.field public mCirclePaint:Landroid/graphics/Paint;

.field public mCircleXProperty:Lmiuix/animation/property/ViewProperty;

.field public mContext:Landroid/content/Context;

.field public mCurrentCircleX:F

.field public mCurrentNum:I

.field public mCurrentScaleRate:F

.field public mCurrentTextPaint:Landroid/graphics/Paint;

.field public mHideType:I

.field public mInnerPaint:Landroid/graphics/Paint;

.field public mMax:I

.field public mMin:I

.field public mNeedRefrensh:Z

.field public mNormalTextPaint:Landroid/text/TextPaint;

.field public mRTL:Z

.field public mScaleObject:Ljava/lang/Object;

.field public mScaleProperty:Lmiuix/animation/property/ViewProperty;

.field public mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

.field public mStep:I

.field public mStyle:Lmiuix/animation/IStateStyle;

.field public mUnit:Ljava/lang/String;

.field public mViewHeight:I

.field public mViewWidth:I

.field public mXObject:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleObject:Ljava/lang/Object;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mXObject:Ljava/lang/Object;

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    iput-boolean p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->isScaledUp:Z

    new-instance p2, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;

    const-string p3, "CircleX"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$1;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCircleXProperty:Lmiuix/animation/property/ViewProperty;

    new-instance p2, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;

    const-string/jumbo p3, "scale"

    invoke-direct {p2, p0, p3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$2;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleProperty:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p0, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->initPaint(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/timerburst/TimerBurstSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/camera/timerburst/TimerBurstSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/timerburst/TimerBurstSeekBar;)F
    .locals 0

    iget p0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    return p0
.end method

.method public static synthetic access$102(Lcom/android/camera/timerburst/TimerBurstSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    return p1
.end method

.method private numToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStep:I

    mul-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private startAnimator(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mScaleProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v0

    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, -0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-virtual {p1, v0, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method


# virtual methods
.method public initPaint(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070721

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706d6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sput p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MIN:F

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sput p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MAX:F

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sput p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MIN:F

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706d8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sput p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MAX:F

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sput p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f060346

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    const v3, 0x7f060342

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public initSeekBarConfig([IIFILjava/lang/String;Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f060342

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v1

    const v2, 0x7f060346

    invoke-virtual {v1, v2}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    iput p3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    const/4 p3, 0x0

    aget p3, p1, p3

    iput p3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    array-length p3, p1

    sub-int/2addr p3, v0

    aget p1, p1, p3

    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    iput p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    iput p4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStep:I

    if-nez p5, :cond_0

    const-string p5, ""

    :cond_0
    iput-object p5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mUnit:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

    return-void
.end method

.method public mapNumToPosition(ILcom/android/camera/timerburst/TimerBurstSeekBar$Result;)F
    .locals 4

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_0
    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    return p1

    :cond_1
    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_2
    iget p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float p1, p1

    sget p2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr p1, p2

    return p1

    :cond_3
    sub-int/2addr p1, v0

    int-to-float p1, p1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    const v0, 0x3cf5c28f    # 0.03f

    cmpg-float v1, p1, v0

    const v2, 0x3dcccccd    # 0.1f

    if-gez v1, :cond_5

    if-eqz p2, :cond_4

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_4
    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    goto :goto_0

    :cond_5
    const v1, 0x3f7851ec    # 0.97f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_7

    if-eqz p2, :cond_6

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_6
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    const p2, 0x3f666666    # 0.9f

    add-float/2addr p1, p2

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_NONE:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_8
    sub-float/2addr p1, v0

    const p2, 0x3f70a3d7    # 0.94f

    div-float/2addr p1, p2

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p2

    add-float/2addr p1, v2

    :goto_0
    sget p2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    add-float/2addr p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float v2, p2, v1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    sub-float/2addr v0, v1

    invoke-static {p1, v2, v0}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public mapPositionToNum(FLcom/android/camera/timerburst/TimerBurstSeekBar$Result;)I
    .locals 4

    sget v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_0
    iget p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    return p1

    :cond_1
    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v2, v1

    sub-float/2addr v2, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    sget p1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, p1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_2
    iget p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    return p1

    :cond_3
    sub-float/2addr p1, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v1, p1, v0

    const v2, 0x3cf5c28f    # 0.03f

    if-gez v1, :cond_5

    if-eqz p2, :cond_4

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_4
    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    goto :goto_0

    :cond_5
    const v1, 0x3f666666    # 0.9f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_7

    if-eqz p2, :cond_6

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {p2, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_6
    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    const p2, 0x3f7851ec    # 0.97f

    add-float/2addr p1, p2

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_NONE:I

    invoke-virtual {p2, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_8
    sub-float/2addr p1, v0

    const p2, 0x3f4ccccd    # 0.8f

    div-float/2addr p1, p2

    const p2, 0x3f70a3d7    # 0.94f

    mul-float/2addr p1, p2

    add-float/2addr p1, v2

    :goto_0
    iget p2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, p1, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    new-instance v0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;

    invoke-direct {v0, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mapPositionToNum(FLcom/android/camera/timerburst/TimerBurstSeekBar$Result;)I

    move-result v1

    if-eq v2, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mapNumToPosition(ILcom/android/camera/timerburst/TimerBurstSeekBar$Result;)F

    move-result v1

    iput v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    iput-boolean v8, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNeedRefrensh:Z

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v2, v0

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v3, v6, v9

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget-object v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mBackgroundRectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    sget v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MIN:F

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    sget v2, Lcom/android/camera/timerburst/TimerBurstSeekBar;->INNER_RADIUS_MAX:F

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v1, v10

    add-float v6, v0, v1

    iget-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    sub-float v1, v0, v6

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v2, v0

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v6

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    add-float/2addr v4, v6

    int-to-float v0, v0

    sub-float/2addr v0, v3

    add-float v5, v0, v6

    iget-object v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    sget v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float v1, v0, v6

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v3, v2

    sub-float/2addr v3, v0

    sub-float/2addr v3, v6

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    add-float/2addr v4, v6

    int-to-float v2, v2

    sub-float/2addr v2, v0

    add-float v5, v2, v6

    iget-object v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mInnerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    sget v0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MIN:F

    sget v1, Lcom/android/camera/timerburst/TimerBurstSeekBar;->CIRICLE_RADIUS_MAX:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v10

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewHeight:I

    int-to-float v2, v2

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    iget v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentScaleRate:F

    mul-float/2addr v4, v3

    div-float/2addr v4, v10

    add-float/2addr v4, v2

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    if-eq v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v5}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v8, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v3, v5

    div-float/2addr v5, v9

    add-float/2addr v2, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v5, v5

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v5, v6

    add-float/2addr v2, v4

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v5}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v8, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v5, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v5, v3, v5

    div-float/2addr v5, v9

    add-float/2addr v2, v5

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    add-float/2addr v2, v4

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v5, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_1
    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v5}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v8, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v3, v1

    div-float/2addr v1, v9

    add-float/2addr v2, v1

    sub-float/2addr v2, v3

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    add-float/2addr v2, v4

    iget-object v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v5}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v8, v5, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v3, v1

    div-float/2addr v1, v9

    add-float/2addr v2, v1

    sub-float/2addr v2, v3

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    invoke-direct {p0, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v3, v3

    sget v5, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    sub-float/2addr v3, v5

    add-float/2addr v2, v4

    iget-object v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mNormalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v2}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v8, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v1, v2, v1

    div-float/2addr v1, v9

    add-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-direct {p0, v1}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->numToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    add-float/2addr v0, v4

    iget-object v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->isScaledUp:Z

    if-nez v0, :cond_3

    invoke-direct {p0, v4}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->startAnimator(Z)V

    iput-boolean v4, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->isScaledUp:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->startAnimator(Z)V

    iput-boolean v3, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->isScaledUp:Z

    goto :goto_0

    :cond_2
    new-array v0, v4, [Landroid/view/View;

    aput-object p0, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCircleXProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v6, v5, v3

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentCircleX:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v0, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStyle:Lmiuix/animation/IStateStyle;

    :cond_3
    :goto_0
    new-instance v0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;

    invoke-direct {v0, p0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;-><init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sget v5, Lcom/android/camera/timerburst/TimerBurstSeekBar;->OUT_RADIUS:F

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mViewWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v5

    invoke-static {p1, v5, v6}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mapPositionToNum(FLcom/android/camera/timerburst/TimerBurstSeekBar$Result;)I

    move-result v5

    iget-boolean v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mRTL:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMax:I

    iget v7, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mMin:I

    add-int/2addr v6, v7

    sub-int v5, v6, v5

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v6

    sget v7, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    if-ne v6, v7, :cond_4

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    invoke-virtual {v0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v6

    sget v7, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MAX:I

    if-ne v6, v7, :cond_5

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_MIN:I

    invoke-virtual {v0, v6}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->setHideType(I)V

    :cond_5
    :goto_1
    iget v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    if-eq v5, v6, :cond_6

    iput v5, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCurrentNum:I

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->getResultHideType()I

    move-result v0

    iput v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mHideType:I

    sget v6, Lcom/android/camera/timerburst/TimerBurstSeekBar;->HIDE_NONE:I

    if-eq v0, v6, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mStyle:Lmiuix/animation/IStateStyle;

    if-eqz v0, :cond_8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mCircleXProperty:Lmiuix/animation/property/ViewProperty;

    aput-object v6, v1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v4

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v6, -0x2

    new-array v7, v2, [F

    fill-array-data v7, :array_0

    invoke-virtual {v3, v6, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar;->mSeekBarValueListener:Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;

    invoke-interface {v0, p0, p1, v5}, Lcom/android/camera/timerburst/TimerBurstSeekBar$SeekBarValueListener;->currentSeekBarValue(Landroid/view/View;FI)V

    :cond_8
    return v4

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method
