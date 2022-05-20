.class public Lcom/android/gallery3d/ui/ExtTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "ExtTexture.java"


# static fields
.field public static sTextureId:[I


# instance fields
.field public mTarget:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;-><init>()V

    .line 2
    sget-object v0, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 3
    sget-object v0, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "texId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtTexture"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x8d65

    .line 5
    iput v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    return-void
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    iget v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 2
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const v1, 0x812f

    const/16 v2, 0x2802

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 3
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const/16 v2, 0x2803

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 4
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0x2801

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 5
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const/16 v2, 0x2800

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 0

    return-void
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0

    return-void
.end method

.method public getTarget()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    return v0
.end method

.method public hasBorder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ExtTexture;->uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public yield()V
    .locals 0

    return-void
.end method
