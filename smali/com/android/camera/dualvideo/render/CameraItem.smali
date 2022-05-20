.class public Lcom/android/camera/dualvideo/render/CameraItem;
.super Ljava/lang/Object;
.source "CameraItem.java"

# interfaces
.implements Lcom/android/camera/dualvideo/render/CameraItemInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;,
        Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;
    }
.end annotation


# static fields
.field public static final HANDLER_OFFSET:I = 0xa

.field public static final TAG:Ljava/lang/String; = "CameraItem"


# instance fields
.field public ALPHA_ANIM_TAG:Ljava/lang/String;

.field public ALPHA_ANIM_VALUE:Ljava/lang/String;

.field public CHANGE_ATTRI_ANIM_GROUP:Ljava/lang/String;

.field public CHANGE_ATTRI_ANIM_TAG:Ljava/lang/String;

.field public CHANGE_ATTRI_ANIM_VALUE:Ljava/lang/String;

.field public SCALE_ANIM_TAG:Ljava/lang/String;

.field public SCALE_ANIM_VALUE:Ljava/lang/String;

.field public SHRINK_ANIM_GROUP:Ljava/lang/String;

.field public SHRINK_ANIM_TAG:Ljava/lang/String;

.field public SHRINK_ANIM_VALUE:Ljava/lang/String;

.field public VISIBLE_ANIM_GROUP:Ljava/lang/String;

.field public VISIBLE_ANIM_TAG:Ljava/lang/String;

.field public VISIBLE_ANIM_VALUE:Ljava/lang/String;

.field public mAlpha:F

.field public final mDrawAttriList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/camera/dualvideo/render/ContentType;",
            "Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;",
            ">;"
        }
    .end annotation
.end field

.field public final mFaceType:Lcom/android/camera/dualvideo/render/FaceType;

.field public mGridWindowFlagAlpha:F

.field public mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

.field public mGridWindowFlagDstAlpha:F

.field public final mGridWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field public mIsAnimating:Z

.field public mIsPressedInGridWindow:Z

.field public mIsVisible:Z

.field public mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field public mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field public mSelectedFrameAlpha:F

.field public mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

.field public mSelectedFrameDstAlpha:F

.field public mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

.field public mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/FaceType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/camera/dualvideo/render/ContentType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Ljava/util/Map;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shrink_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_VALUE:Ljava/lang/String;

    const-string/jumbo v0, "shrink_group"

    .line 6
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_GROUP:Ljava/lang/String;

    const-string/jumbo v0, "shrink_tag"

    .line 7
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_TAG:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attri_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->CHANGE_ATTRI_ANIM_VALUE:Ljava/lang/String;

    const-string v0, "attri_group"

    .line 9
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->CHANGE_ATTRI_ANIM_GROUP:Ljava/lang/String;

    const-string v0, "attri_tag"

    .line 10
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->CHANGE_ATTRI_ANIM_TAG:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scale_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SCALE_ANIM_VALUE:Ljava/lang/String;

    const-string/jumbo v0, "scale_tag"

    .line 12
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SCALE_ANIM_TAG:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alpha_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->ALPHA_ANIM_VALUE:Ljava/lang/String;

    const-string v0, "alpha_tag"

    .line 14
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->ALPHA_ANIM_TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visible_value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->VISIBLE_ANIM_VALUE:Ljava/lang/String;

    const-string/jumbo v0, "visible_group"

    .line 16
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->VISIBLE_ANIM_GROUP:Ljava/lang/String;

    const-string/jumbo v0, "visible_tag"

    .line 17
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->VISIBLE_ANIM_TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 19
    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 20
    iput-object p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 21
    iput-object p3, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceType:Lcom/android/camera/dualvideo/render/FaceType;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    .line 23
    sget-object p1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/dualvideo/render/CameraItem;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SCALE_ANIM_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->CHANGE_ATTRI_ANIM_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/dualvideo/render/CameraItem;Landroid/graphics/Rect;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->scale(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->ALPHA_ANIM_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/dualvideo/render/CameraItem;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    return p1
.end method

.method public static synthetic access$500(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->clampAlpha()V

    return-void
.end method

.method public static synthetic access$602(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    return p1
.end method

.method public static synthetic access$702(Lcom/android/camera/dualvideo/render/CameraItem;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->VISIBLE_ANIM_TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/dualvideo/render/CameraItem;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_TAG:Ljava/lang/String;

    return-object p0
.end method

.method private animShrink()V
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animShrink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    const/high16 v1, 0x43480000    # 200.0f

    const/4 v2, 0x6

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 3
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_VALUE:Ljava/lang/String;

    invoke-static {v0}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    move-result-object v0

    iget-object v8, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_TAG:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lmiuix/animation/ValueTarget;->getValue(Ljava/lang/String;)F

    move-result v0

    new-array v8, v7, [Ljava/lang/Object;

    .line 5
    iget-object v9, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_VALUE:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v8}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_GROUP:Ljava/lang/String;

    .line 6
    invoke-interface {v8, v9}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_TAG:Ljava/lang/String;

    aput-object v10, v9, v6

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v7

    invoke-interface {v8, v9}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_TAG:Ljava/lang/String;

    aput-object v8, v4, v6

    aput-object v3, v4, v7

    .line 8
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v7, [F

    aput v1, v8, v6

    .line 9
    invoke-virtual {v3, v2, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v7, [Lmiuix/animation/listener/TransitionListener;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object v3, v2, v6

    .line 10
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v4, v5

    .line 11
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v7, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    .line 13
    new-instance v0, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    invoke-direct {v0, p0}, Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    new-array v0, v7, [Ljava/lang/Object;

    .line 14
    iget-object v8, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_VALUE:Ljava/lang/String;

    aput-object v8, v0, v6

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v8, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_GROUP:Ljava/lang/String;

    .line 15
    invoke-interface {v0, v8}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_TAG:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v9, 0x0

    .line 16
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-interface {v0, v8}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_TAG:Ljava/lang/String;

    aput-object v8, v4, v6

    aput-object v3, v4, v7

    .line 17
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v8, v7, [F

    aput v1, v8, v6

    .line 18
    invoke-virtual {v3, v2, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v2, v7, [Lmiuix/animation/listener/TransitionListener;

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object v3, v2, v6

    .line 19
    invoke-virtual {v1, v2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v4, v5

    .line 20
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private clampAlpha()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 2
    iput v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 3
    iput v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    :cond_1
    :goto_0
    return-void
.end method

.method private drawBlurCover(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 2
    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$FaceType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "CameraItem"

    const-string v4, "b_b"

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string p1, "drawBlurCover: face type error!!"

    .line 3
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "r_b"

    .line 4
    invoke-virtual {p2, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p2, v4}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "f_b"

    .line 6
    invoke-virtual {p2, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2, v4}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "drawBlurCover: null tex: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrixBasic(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object p2

    .line 10
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v2, v1, v0, p2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;[F)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawDarkCorner(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string v3, "d_c_t_f"

    goto :goto_1

    :cond_2
    const-string v3, "d_c_t"

    .line 5
    :goto_1
    invoke-virtual {p2, v3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v3

    if-eqz v2, :cond_3

    const-string v2, "d_c_b_f"

    goto :goto_2

    :cond_3
    const-string v2, "d_c_b"

    .line 6
    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    .line 7
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 8
    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v2, v3, v1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 9
    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 11
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0, p2, v1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawGridLine(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isPressedInGridWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 3
    :cond_2
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_4

    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    goto :goto_0

    :cond_3
    const v1, 0x3eaaaaab

    .line 7
    invoke-static {p1, v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    .line 8
    invoke-static {p1, v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    const v1, 0x3f2aaaab

    .line 9
    invoke-static {p1, v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawHorizontalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    .line 10
    invoke-static {p1, v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->drawVerticalLine(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;F)V

    :cond_4
    :goto_0
    return-void
.end method

.method private drawLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->isGridWindowType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->drawLabelLeftDown(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawTopCenter(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawLabelLeftDown(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigDescription(Lcom/android/camera/dualvideo/render/LayoutType;)Ljava/util/Optional;

    move-result-object v0

    .line 2
    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO;

    invoke-direct {v1, p0, p2, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private drawPreview(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 2
    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "exp"

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "shr"

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->getScalingHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p2, p3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawSelectedBorder(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3fe66666    # 1.8f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "s_frame_f"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "s_frame_s"

    .line 4
    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0, p2, v1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method private drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectFrameAlpha()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    .line 3
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectFrameAlpha()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 4
    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->drawSelectedBorder(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    .line 7
    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-string/jumbo v3, "s_bg"

    .line 8
    invoke-virtual {p2, v3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v3

    .line 9
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 10
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 11
    new-instance v4, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v4, v3, v2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v4}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 12
    sget-object v3, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$util$SelectIndex:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    const-string/jumbo v3, "s_2"

    .line 13
    invoke-virtual {p2, v3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "s_1"

    .line 14
    invoke-virtual {p2, v3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v3

    .line 15
    :goto_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 16
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->gemAnimTexTransMatrix()[F

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    .line 17
    iget-object p2, v1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 18
    iget p2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/graphics/Rect;->left:I

    .line 19
    iget p2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v2, Landroid/graphics/Rect;->top:I

    .line 20
    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p2, v3, v2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 21
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 22
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    return-void
.end method

.method private drawSwitchHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->getSwitchHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const-string/jumbo v2, "s_c"

    invoke-virtual {p2, v2}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawTopCenter(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigDescription(Lcom/android/camera/dualvideo/render/LayoutType;)Ljava/util/Optional;

    move-result-object v0

    .line 2
    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0oo;

    invoke-direct {v1, p0, p2, p3, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/OooO0oo;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/MiscTextureManager;ILcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private genPreviewAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 3
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-static {v3, v4, v0, p1}, Lcom/android/camera/dualvideo/render/RenderUtil;->generatePreviewTransMatrix(Lcom/android/camera/dualvideo/render/FaceType;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)[F

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    return-object v1
.end method

.method private getRenderRect()Landroid/graphics/Rect;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method private getSelectFrameAlpha()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    iput v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->getRatio()F

    move-result v0

    .line 7
    iget v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private needAnim(Lcom/android/camera/dualvideo/render/RegionHelper;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/render/RegionHelper;->getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p1

    .line 4
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private restoreAnimShrink()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreAnimShrink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_VALUE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_GROUP:Ljava/lang/String;

    .line 3
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SHRINK_ANIM_TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v0, [F

    const/high16 v6, 0x43480000    # 200.0f

    aput v6, v5, v3

    const/4 v6, 0x6

    .line 5
    invoke-virtual {v4, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mShrinkListener:Lcom/android/camera/dualvideo/render/CameraItem$ShrinkAnimListener;

    aput-object v5, v0, v3

    .line 6
    invoke-virtual {v4, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 7
    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private scale(Landroid/graphics/Rect;F)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/camera/dualvideo/render/RectUtil;->centerScale(Landroid/graphics/Rect;F)V

    .line 2
    sget-object p2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object p2

    iput-object p1, p2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/MiscTextureManager;ILcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1, p4}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    const-string v1, "CameraItem"

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "drawLabel: tex "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p4, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v2, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    if-eq v2, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move p2, p4

    .line 6
    :cond_2
    :goto_0
    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 7
    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexTransMatrix()[F

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    .line 8
    new-instance p4, Landroid/graphics/Rect;

    sget-object v2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v2}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexOrientation()I

    move-result p1

    const v3, 0x4168cccd    # 14.55f

    if-eqz p1, :cond_5

    const/16 v4, 0x5a

    if-eq p1, v4, :cond_4

    const/16 v4, 0xb4

    if-eq p1, v4, :cond_5

    const/16 v4, 0x10e

    if-eq p1, v4, :cond_3

    const-string p1, "invalid orientation"

    .line 11
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :cond_3
    iget p1, p4, Landroid/graphics/Rect;->right:I

    .line 13
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, p2

    iget p2, p4, Landroid/graphics/Rect;->top:I

    .line 14
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    .line 15
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p4

    .line 16
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    .line 17
    invoke-static {p1, p2, p4, v1}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1

    .line 18
    :cond_4
    iget p1, p4, Landroid/graphics/Rect;->left:I

    .line 19
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr p1, p2

    iget p2, p4, Landroid/graphics/Rect;->top:I

    .line 20
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    .line 21
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p4

    .line 22
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    .line 23
    invoke-static {p1, p2, p4, v1}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1

    .line 24
    :cond_5
    iget p1, p4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iget p4, p4, Landroid/graphics/Rect;->top:I

    .line 25
    invoke-static {v3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    add-int/2addr p4, v1

    add-int/2addr p4, p2

    .line 26
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p2

    .line 27
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    .line 28
    invoke-static {p1, p4, p2, v1}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 29
    :goto_1
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1, v0, v2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p3, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 30
    invoke-interface {p3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/dualvideo/render/MiscTextureManager;Lcom/android/gallery3d/ui/GLCanvas;Ljava/lang/String;)V
    .locals 3

    .line 31
    invoke-virtual {p1, p3}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "drawLabel: tex "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraItem"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 33
    :cond_0
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 34
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getGridWindowFlagAlpha()F

    move-result v1

    iget v2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    mul-float/2addr v1, v2

    invoke-virtual {p3, v1}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 35
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexTransMatrix()[F

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    .line 36
    new-instance p3, Landroid/graphics/Rect;

    sget-object v1, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v1}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {p3, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexOrientation()I

    move-result p1

    if-eqz p1, :cond_2

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    iget p1, p3, Landroid/graphics/Rect;->left:I

    const v1, 0x40e8a3d7    # 7.27f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    add-int/2addr p1, v2

    iput p1, p3, Landroid/graphics/Rect;->left:I

    .line 39
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 40
    iget p1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 41
    iget p1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 42
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1, v0, p3}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0

    .line 43
    :cond_2
    iget p1, p3, Landroid/graphics/Rect;->left:I

    const v1, 0x412e8f5c    # 10.91f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Rect;->left:I

    .line 44
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    const v1, 0x408b851f    # 4.36f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Rect;->top:I

    .line 45
    iget p1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 46
    iget p1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 47
    new-instance p1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {p1, v0, p3}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p2, p1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 48
    :goto_0
    invoke-interface {p2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method public alphaInGridWindowFlag(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_0

    const/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/render/EaseOutAnim;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagDstAlpha:F

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagDstAlpha:F

    :goto_1
    return-void
.end method

.method public alphaInSelectedFrame(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;

    move-result-object v0

    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/camera/dualvideo/render/EaseOutAnim;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameDstAlpha:F

    :goto_1
    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V

    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/ContentType;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V
    .locals 1

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$ContentType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawSwitchHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawScalingHandle(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawDarkCorner(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/dualvideo/render/CameraItem;->drawLabel(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;I)V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-direct {p0, p1, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->drawBlurCover(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/dualvideo/render/MiscTextureManager;)V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enterOrExit(Lio/reactivex/SingleEmitter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleEmitter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lio/reactivex/SingleEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    .line 3
    :cond_0
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, -0x2

    invoke-virtual {v0, v4, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    .line 4
    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 5
    iget-boolean v5, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    const/16 v6, 0x3e8

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    new-array v5, v2, [F

    .line 6
    fill-array-data v5, :array_1

    invoke-virtual {v3, v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move v4, v1

    goto :goto_0

    :cond_1
    const/16 v4, 0x10

    new-array v5, v7, [F

    const/high16 v8, 0x43960000    # 300.0f

    aput v8, v5, v1

    .line 7
    invoke-virtual {v3, v4, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move v4, v6

    move v6, v1

    .line 8
    :goto_0
    iput-boolean v7, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    .line 9
    iput-boolean v7, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    new-array v5, v7, [Ljava/lang/Object;

    .line 10
    iget-object v8, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SCALE_ANIM_VALUE:Ljava/lang/String;

    aput-object v8, v5, v1

    invoke-static {v5}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SCALE_ANIM_TAG:Ljava/lang/String;

    aput-object v9, v8, v1

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-interface {v5, v8}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v5

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/camera/dualvideo/render/CameraItem;->SCALE_ANIM_TAG:Ljava/lang/String;

    aput-object v10, v9, v1

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    new-array v10, v7, [Lmiuix/animation/listener/TransitionListener;

    new-instance v11, Lcom/android/camera/dualvideo/render/CameraItem$1;

    invoke-direct {v11, p0}, Lcom/android/camera/dualvideo/render/CameraItem$1;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    aput-object v11, v10, v1

    .line 13
    invoke-virtual {v0, v10}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v9, v2

    .line 14
    invoke-interface {v5, v9}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v7, [Ljava/lang/Object;

    .line 15
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItem;->ALPHA_ANIM_VALUE:Ljava/lang/String;

    aput-object v5, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/camera/dualvideo/render/CameraItem;->ALPHA_ANIM_TAG:Ljava/lang/String;

    aput-object v9, v5, v1

    .line 16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v0, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/dualvideo/render/CameraItem;->ALPHA_ANIM_TAG:Ljava/lang/String;

    aput-object v6, v5, v1

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v7

    new-array v4, v7, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/android/camera/dualvideo/render/CameraItem$2;

    invoke-direct {v6, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem$2;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lio/reactivex/SingleEmitter;)V

    aput-object v6, v4, v1

    .line 18
    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    aput-object p1, v5, v2

    .line 19
    invoke-interface {v0, v5}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f7d70a4    # 0.99f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    return v0
.end method

.method public getFaceType()Lcom/android/camera/dualvideo/render/FaceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceType:Lcom/android/camera/dualvideo/render/FaceType;

    return-object v0
.end method

.method public getGridWindowFlagAlpha()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAlpha:F

    return v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagDstAlpha:F

    iput v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAlpha:F

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAnim:Lcom/android/camera/dualvideo/render/EaseOutAnim;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/EaseOutAnim;->getRatio()F

    move-result v0

    .line 7
    iget v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowFlagDstAlpha:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public getGridWindowLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object v0
.end method

.method public getLastRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object v0
.end method

.method public getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    return-object p1
.end method

.method public getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object v0
.end method

.method public getScalingHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/CameraItem$4;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    const-string v1, "exp"

    .line 3
    invoke-virtual {p1, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    iget-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    const/16 p1, 0xa

    .line 6
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedIndex()Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object v0
.end method

.method public getSwitchHandleArea(Lcom/android/camera/dualvideo/render/MiscTextureManager;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, v0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderAttri(Lcom/android/camera/dualvideo/render/ContentType;)Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;

    move-result-object v0

    const-string/jumbo v1, "s_c"

    .line 2
    invoke-virtual {p1, v1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->getTexture(Ljava/lang/String;)Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->getRenderLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v1

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 4
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p1

    invoke-direct {v2, v3, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5
    iget-object p1, v0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    const/16 p1, 0xa

    add-int/2addr v1, p1

    .line 6
    invoke-virtual {v2, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object v2
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->isPressedInGridWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPressedInGridWindow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    return v0
.end method

.method public onKeyDown()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->animShrink()V

    const-string v0, "CameraItem"

    const-string/jumbo v1, "onKeyDown: "

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyUp()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsPressedInGridWindow:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/CameraItem;->restoreAnimShrink()V

    :cond_0
    const-string v0, "CameraItem"

    const-string/jumbo v1, "onKeyUp: "

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLastRenderLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mDrawAttriList:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRenderLayoutTypeWithAnim(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/RegionHelper;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 4
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setComposeTypeWithAnimation: from: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraItem"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/dualvideo/render/CameraItem;->updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V

    return-void
.end method

.method public setSelectTypeWithAnim(Lcom/android/camera/dualvideo/util/SelectIndex;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectedTypeWithAnim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraItem"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eq v0, v1, :cond_1

    if-eq p1, v1, :cond_1

    .line 4
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-eqz p2, :cond_3

    .line 6
    sget-object p2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->alphaInSelectedFrame(Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->alphaInSelectedFrame(Z)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object p2, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    goto :goto_0

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 11
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedFrameAlpha:F

    :goto_0
    return-void
.end method

.method public setVisibilityWithAnim(ZZ)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-eqz p1, :cond_1

    const/16 v0, 0xc8

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    :goto_0
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    new-array p1, p2, [Ljava/lang/Object;

    .line 3
    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItem;->VISIBLE_ANIM_VALUE:Ljava/lang/String;

    aput-object v4, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItem;->VISIBLE_ANIM_GROUP:Ljava/lang/String;

    .line 4
    invoke-interface {p1, v4}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera/dualvideo/render/CameraItem;->VISIBLE_ANIM_TAG:Ljava/lang/String;

    aput-object v6, v5, v2

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, p2

    invoke-interface {p1, v5}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/CameraItem;->VISIBLE_ANIM_TAG:Ljava/lang/String;

    aput-object v5, v3, v2

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, p2

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x6

    new-array v6, p2, [F

    int-to-float v0, v0

    aput v0, v6, v2

    .line 7
    invoke-virtual {v1, v5, v6}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array p2, p2, [Lmiuix/animation/listener/TransitionListener;

    new-instance v1, Lcom/android/camera/dualvideo/render/CameraItem$3;

    invoke-direct {v1, p0}, Lcom/android/camera/dualvideo/render/CameraItem$3;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;)V

    aput-object v1, p2, v2

    .line 8
    invoke-virtual {v0, p2}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    aput-object p2, v3, v4

    .line 9
    invoke-interface {p1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_4

    .line 10
    :cond_4
    iput-boolean p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 11
    :goto_3
    iput p1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mAlpha:F

    :goto_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderItem{mLastPreviewComposeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mLastLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRenderComposeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mRenderLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mGridWindowLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mGridWindowLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mFaceType:Lcom/android/camera/dualvideo/render/FaceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAnimating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mSelectedType:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateRenderAttri(Lcom/android/camera/dualvideo/render/RegionHelper;Z)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->needAnim(Lcom/android/camera/dualvideo/render/RegionHelper;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/android/camera/dualvideo/render/CameraItem;->mIsAnimating:Z

    .line 3
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 4
    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 5
    new-instance v1, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem$RenderTypeChangeAnimListener;-><init>(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/render/RegionHelper;)V

    new-array p1, p2, [Lmiuix/animation/listener/TransitionListener;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p1, p2, [Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->CHANGE_ATTRI_ANIM_VALUE:Ljava/lang/String;

    aput-object v1, p1, v3

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/CameraItem;->CHANGE_ATTRI_ANIM_GROUP:Ljava/lang/String;

    .line 8
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setup(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItem;->CHANGE_ATTRI_ANIM_TAG:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v4, 0x0

    .line 9
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, p2

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/CameraItem;->CHANGE_ATTRI_ANIM_TAG:Ljava/lang/String;

    aput-object v4, v1, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 10
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, p2

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItem;->genPreviewAttri(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p1

    sget-object p2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/dualvideo/render/CameraItem;->setRenderAttri(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;Lcom/android/camera/dualvideo/render/ContentType;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method
