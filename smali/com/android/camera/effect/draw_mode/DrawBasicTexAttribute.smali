.class public Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
.source "DrawBasicTexAttribute.java"


# instance fields
.field public mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mIsSnapshot:Z

.field public mTextureTransform:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    const/4 p1, 0x5

    .line 5
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    const/4 p1, 0x5

    .line 12
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;[F)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    .line 7
    iput-object p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mTextureTransform:[F

    return-void
.end method


# virtual methods
.method public init(Lcom/android/gallery3d/ui/BasicTexture;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 3
    iput-boolean v3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method

.method public init(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;Z)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 9
    iput-boolean p3, p0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    return-object p0
.end method
