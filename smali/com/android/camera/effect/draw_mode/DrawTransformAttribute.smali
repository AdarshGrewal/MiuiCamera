.class public Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawTransformAttribute.java"


# instance fields
.field public mDrawRect:Landroid/graphics/Rect;

.field public mIsSnapshot:Z

.field public mMvpTransform:[F

.field public mTexId:I

.field public mTextureTransform:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mDrawRect:Landroid/graphics/Rect;

    const/16 v0, 0xe

    .line 3
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Rect;[F[FZ)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mDrawRect:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mTexId:I

    const/16 p1, 0xe

    .line 8
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 9
    iput-object p4, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mTextureTransform:[F

    .line 10
    iput-object p3, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mMvpTransform:[F

    .line 11
    iput-boolean p5, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mIsSnapshot:Z

    return-void
.end method


# virtual methods
.method public init(IIIII[F[FZ)Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mTexId:I

    const/16 p1, 0xe

    .line 9
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 10
    iput-object p7, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mTextureTransform:[F

    .line 11
    iput-object p6, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mMvpTransform:[F

    .line 12
    iput-boolean p8, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mIsSnapshot:Z

    return-object p0
.end method

.method public init(ILandroid/graphics/Rect;[F[FZ)Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mTexId:I

    const/16 p1, 0xe

    .line 3
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 4
    iput-object p4, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mTextureTransform:[F

    .line 5
    iput-object p3, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mMvpTransform:[F

    .line 6
    iput-boolean p5, p0, Lcom/android/camera/effect/draw_mode/DrawTransformAttribute;->mIsSnapshot:Z

    return-object p0
.end method
