.class public Lcom/android/camera/VolumeControlPanel;
.super Landroid/view/View;
.source "VolumeControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;,
        Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:F = 50.0f

.field public static final LIMIT_SMALL_VALUE:F = 0.1f

.field public static final TAG:Ljava/lang/String;

.field public static final ZERO_VALUE:F


# instance fields
.field public antiAlias:Z

.field public mDialColor:I

.field public mDialPaint:Landroid/graphics/Paint;

.field public mLastX:F

.field public mOffsetX:F

.field public mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

.field public mOnVolumePressAnimatorListener:Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;

.field public mSwitchAnimator:Z

.field public mTemporaryValue:F

.field public mUnitLength:F

.field public mVolumeRectBottom:F

.field public mVolumeRectLeft:F

.field public mVolumeRectRight:F

.field public mVolumeRectTop:F

.field public mVolumeRectWidth:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/camera/VolumeControlPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/VolumeControlPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/VolumeControlPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    invoke-direct {p0, p1, p2}, Lcom/android/camera/VolumeControlPanel;->Init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private Init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/camera/VolumeControlPanel;->initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/camera/VolumeControlPanel;->initPaint()V

    return-void
.end method

.method private drawRectHorizontal(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v2, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectLeft:F

    iget v3, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectTop:F

    iget v4, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    iget v5, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectBottom:F

    iget-object v6, p0, Lcom/android/camera/VolumeControlPanel;->mDialPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private initConfig(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    if-eqz v0, :cond_0

    const-string/jumbo v2, "pro_set_gain_value"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    :cond_0
    sget-object v0, Lcom/android/camera/R$styleable;->VolumeControl:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/camera/VolumeControlPanel;->antiAlias:Z

    const/4 p2, 0x0

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mDialColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07079e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectTop:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07079f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectBottom:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectLeft:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07079d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectWidth:F

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mUnitLength:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    return-void
.end method

.method private initPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mDialPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/camera/VolumeControlPanel;->antiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mDialPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/VolumeControlPanel;->mDialColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public gainValueResetHorizontal(F)V
    .locals 2

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mUnitLength:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    iget p1, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setSilenceUpSwitchTarget(Z)V

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setSilenceUpSwitchTarget(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/camera/VolumeControlPanel;->drawRectHorizontal(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/camera/VolumeControlPanel;->mLastX:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/camera/VolumeControlPanel;->mOffsetX:F

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->mLastX:F

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectLeft:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    iget-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {v0, v2}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setSilenceUpSwitchTarget(Z)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    iget v3, p0, Lcom/android/camera/VolumeControlPanel;->mOffsetX:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectLeft:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/VolumeControlPanel;->mSwitchAnimator:Z

    iget-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {v0, v1}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setSilenceUpSwitchTarget(Z)V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mOffsetX:F

    invoke-virtual {p0, v0}, Lcom/android/camera/VolumeControlPanel;->setValueHorizontal(F)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attr_pro_mode_adjust_volume_control_click"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "attr_pro_mode_adjust_volume_control_value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "M_proVideo_"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {v0}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->setPostDelayedTime()V

    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    const-string p1, "VolumeControlPanel"

    const-string/jumbo v1, "onTouchEvent:ACTION_DOWN"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->mLastX:F

    iget-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {p1}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->removePostDelayedTime()V

    return v2
.end method

.method public setOnVolumeControlListener(Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;)V
    .locals 2

    sget-object v0, Lcom/android/camera/VolumeControlPanel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnVolumeListener()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    return-void
.end method

.method public setOnVolumePressAnimatorListener(Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;)V
    .locals 2

    sget-object v0, Lcom/android/camera/VolumeControlPanel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setOnVolumePressAnimatorListener()"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumePressAnimatorListener:Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;

    return-void
.end method

.method public setValueHorizontal(F)V
    .locals 4

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    iget-object p1, p0, Lcom/android/camera/VolumeControlPanel;->mOnVolumeControlListener:Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;

    invoke-interface {p1, v0}, Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;->putVolumeControlValue(F)V

    iget p1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectWidth:F

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iput v0, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    goto :goto_0

    :cond_0
    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    iput v2, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/camera/VolumeControlPanel;->mVolumeRectRight:F

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mUnitLength:F

    div-float v1, p1, v0

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    div-float v2, p1, v0

    :goto_1
    iput v2, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0x3a7

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ChangeGainProtocol;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/VolumeControlPanel;->mTemporaryValue:F

    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ChangeGainProtocol;->setGainValue(F)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVolumeControlBackGround()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Lcom/xiaomi/camera/ui/drawable/RoundRectDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/camera/ui/drawable/RoundRectDrawable;-><init>(IF)V

    return-object v0
.end method
