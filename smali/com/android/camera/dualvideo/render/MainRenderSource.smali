.class public Lcom/android/camera/dualvideo/render/MainRenderSource;
.super Ljava/lang/Object;
.source "MainRenderSource.java"

# interfaces
.implements Lcom/android/camera/dualvideo/render/RenderSource;


# instance fields
.field public mCanDraw:Z

.field public final mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field public mTexture:Lcom/android/gallery3d/ui/ExtTexture;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/util/RenderSourceType;Lcom/android/gallery3d/ui/ExtTexture;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    .line 3
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    .line 4
    iput-object p2, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-void
.end method


# virtual methods
.method public attachToGL(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    return-void
.end method

.method public canDraw()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    return v0
.end method

.method public getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mSourceType:Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    return-object v0
.end method

.method public ismFrameReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeDrawable()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    return-void
.end method

.method public prepare(Landroid/util/Size;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mTexture:Lcom/android/gallery3d/ui/ExtTexture;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    return-void
.end method

.method public resetStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/MainRenderSource;->mCanDraw:Z

    return-void
.end method

.method public updateTexImage()V
    .locals 0

    return-void
.end method
