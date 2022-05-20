.class public Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
.source "DrawExtTexAttribute.java"


# instance fields
.field public mEffectPopup:Z

.field public mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field public mRotation:I

.field public mTextureTransform:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    .line 3
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mRotation:I

    const/16 v0, 0x8

    .line 4
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    .line 12
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mRotation:I

    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    const/16 p1, 0x8

    .line 14
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    .line 7
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mRotation:I

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    const/16 p1, 0x8

    .line 9
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method


# virtual methods
.method public init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    add-int/2addr p5, p3

    add-int/2addr p6, p4

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 3
    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 6
    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrawExtTexAttribute{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTextureTransform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtTexture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEffectPopup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mEffectPopup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
