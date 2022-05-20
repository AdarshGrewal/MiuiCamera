.class public Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;
.super Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;
.source "SeekBarBackGroundShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$SeekBarBackGroundShapeDrawableState;
    }
.end annotation


# static fields
.field public static final FULL_ALPHA:I = 0xff


# instance fields
.field public mBlackAlpha:F

.field public mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/FloatProperty<",
            "Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    .line 3
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;

    const-string v1, "BlackAlpha"

    invoke-direct {v0, p0, v1}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 4
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->initAnim()V

    .line 5
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->initMaskDrawable()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    .line 8
    new-instance p1, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;

    const-string p2, "BlackAlpha"

    invoke-direct {p1, p0, p2}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V

    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    .line 9
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->initAnim()V

    .line 10
    invoke-direct {p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->initMaskDrawable()V

    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private initAnim()V
    .locals 6

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    const v2, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, p0, v1, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 2
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v1, 0x4476bd71

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 3
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    const/high16 v3, 0x3b800000    # 0.00390625f

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 5
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    new-instance v4, LOooO0OO/OooO00o/OooO00o/OooO00o/OooO0O0;

    invoke-direct {v4, p0}, LOooO0OO/OooO00o/OooO00o/OooO00o/OooO0O0;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;)V

    invoke-virtual {v0, v4}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 6
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    iget-object v4, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlphaFloatProperty:Lmiuix/animation/property/FloatProperty;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v4, v5}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 7
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 8
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 9
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0, v3}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 10
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    new-instance v1, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$2;

    invoke-direct {v1, p0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$2;-><init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    return-void
.end method

.method private initMaskDrawable()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getColors()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 3
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 4
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mMaskDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lmiuix/animation/physics/DynamicAnimation;FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->drawMask(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBlackAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    return v0
.end method

.method public newSeekBarGradientState()Lmiuix/androidbasewidget/internal/view/SeekBarGradientDrawable$SeekBarGradientState;
    .locals 1

    .line 1
    new-instance v0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$SeekBarBackGroundShapeDrawableState;

    invoke-direct {v0}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$SeekBarBackGroundShapeDrawableState;-><init>()V

    return-object v0
.end method

.method public setBlackAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mBlackAlpha:F

    return-void
.end method

.method public startPressedAnim()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void
.end method

.method public startUnPressedAnim()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    return-void
.end method
