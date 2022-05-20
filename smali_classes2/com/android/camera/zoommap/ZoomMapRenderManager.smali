.class public Lcom/android/camera/zoommap/ZoomMapRenderManager;
.super Ljava/lang/Object;
.source "ZoomMapRenderManager.java"


# static fields
.field public static final LINE_WIDTH:I = 0x3

.field public static final TAG:Ljava/lang/String; = "ZoomMapRender"


# instance fields
.field public mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

.field public mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

.field public volatile mMapRect:Landroid/graphics/Rect;

.field public mPreviewRatio:Ljava/lang/String;

.field public mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

.field public final mTextureTransformMatrix:[F

.field public mWindowSize:Landroid/util/Size;

.field public mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;Lcom/android/gallery3d/ui/ExtTexture;Landroid/util/Size;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mTextureTransformMatrix:[F

    .line 3
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    .line 4
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/GLPaint;-><init>(FI)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080103

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 7
    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 8
    iput-object p2, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 9
    iput-object p4, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mPreviewRatio:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mWindowSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomMapRender"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public drawZoomMap(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mPreviewRatio:Ljava/lang/String;

    const-string v1, "1x1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mTextureTransformMatrix:[F

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerCropVertical([FF)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mPreviewRatio:Ljava/lang/String;

    const-string v1, "20x9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mTextureTransformMatrix:[F

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1}, Lcom/android/camera/dualvideo/render/RenderUtil;->centerCropVertical([FF)V

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mZoomMapTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mTextureTransformMatrix:[F

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    .line 8
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    .line 9
    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 11
    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 12
    iget-object v7, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mRectAttribute:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    add-int/lit8 v0, v0, -0x3

    int-to-float v8, v0

    add-int/lit8 v1, v1, -0x3

    int-to-float v9, v1

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    int-to-float v10, v0

    iget-object v0, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    int-to-float v11, v0

    iget-object v12, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mGlPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 14
    invoke-virtual/range {v7 .. v12}, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->init(FFFFLcom/android/gallery3d/ui/GLPaint;)Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 15
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mBorderTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    iget-object v2, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    .line 16
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mWindowSize:Landroid/util/Size;

    .line 17
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 18
    invoke-static {v2, v3}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    .line 19
    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return v6
.end method

.method public updateZoomMapRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapRenderManager;->mMapRect:Landroid/graphics/Rect;

    return-void
.end method
