.class public Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;
.super Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;
.source "SeekBaThumbShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;
    }
.end annotation


# static fields
.field public static final FULL_ALPHA:I = 0xff

.field public static final TAG:Ljava/lang/String; = "SeekBaThumbShape"

.field public static mShadowDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field public mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

.field public mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mScale:F

.field public mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public mShadowAlpha:F

.field public mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;

    const-string v1, "ShadowAlpha"

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    new-instance v0, LOooO0Oo/OooO00o/OooO00o/OooO00o/OooO00o;

    invoke-direct {v0, p0}, LOooO0Oo/OooO00o/OooO00o/OooO00o/OooO00o;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;

    const-string v1, "Scale"

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    const/4 p2, 0x0

    iput p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    new-instance p2, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;

    const-string p3, "ShadowAlpha"

    invoke-direct {p2, p0, p3}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$1;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    new-instance p2, LOooO0Oo/OooO00o/OooO00o/OooO00o/OooO00o;

    invoke-direct {p2, p0}, LOooO0Oo/OooO00o/OooO00o/OooO00o/OooO00o;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;)V

    iput-object p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    new-instance p2, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;

    const-string p3, "Scale"

    invoke-direct {p2, p0, p3}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$2;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;Ljava/lang/String;)V

    iput-object p2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->initAnim()V

    if-eqz p1, :cond_0

    sget-object p2, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    sget p2, Lmiuix/androidbasewidget/R$drawable;->miuix_appcompat_sliding_btn_slider_shadow:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget-object v2, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-object v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private initAnim()V
    .locals 6

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v2, 0x404c28f6    # 3.19f

    invoke-direct {v0, p0, v1, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    const v2, 0x3b03126f    # 0.002f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v3, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v3, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScaleFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v3, v4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v2, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    invoke-direct {v0, p0, v2, v4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlphaProperty:Lmiuix/animation/property/FloatProperty;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v4, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mInvalidateUpdateListener:Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    return v0
.end method

.method public newSeekBarGradientState()Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .locals 1

    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;

    invoke-direct {v0}, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable$SeekBaThumbShapeDrawableState;-><init>()V

    return-object v0
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mScale:F

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 0

    iput p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mShadowAlpha:F

    return-void
.end method

.method public startPressedAnim()V
    .locals 1

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_3
    return-void
.end method

.method public startUnPressedAnim()V
    .locals 1

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mPressedShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    :cond_2
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBaThumbShapeDrawable;->mUnPressedShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    :cond_3
    return-void
.end method
