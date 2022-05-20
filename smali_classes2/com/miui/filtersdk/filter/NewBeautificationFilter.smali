.class public Lcom/miui/filtersdk/filter/NewBeautificationFilter;
.super Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;
.source "NewBeautificationFilter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BeautificationFilter"

.field public static final fragmentShader:Ljava/lang/String; = "precision highp float;                             \nvarying vec2 v_texCoord;                           \nuniform sampler2D texture;                         \nvoid main (void){                                  \n   vec3 rgb = texture2D(texture, v_texCoord).rgb;  \n   gl_FragColor = vec4(rgb, 1.0);                  \n}                                                  \n"

.field public static final vertexShader:Ljava/lang/String; = "attribute vec4 a_position;                         \nattribute vec2 a_texCoord;                         \nvarying vec2 v_texCoord;                           \nvoid main(){                                       \n   gl_Position = a_position;                       \n   v_texCoord = a_texCoord;                        \n}                                                  \n"


# instance fields
.field public mWindowHeight:I

.field public mWindowWidth:I

.field public mbGetValidTexureID:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    return-void
.end method

.method public static synthetic access$002(Lcom/miui/filtersdk/filter/NewBeautificationFilter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    return p1
.end method

.method public static synthetic access$100(Lcom/miui/filtersdk/filter/NewBeautificationFilter;)Lcom/miui/filtersdk/beauty/BeautyProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/miui/filtersdk/filter/NewBeautificationFilter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    return p1
.end method

.method public static dumpMatrix([F)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 3
    aget v5, p0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, " "

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "]"

    .line 5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpToBitmap(IILjava/nio/ByteBuffer;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/hehe/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string p0, "BeautificationFilter"

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object p2, v0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p2, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 9
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_1

    .line 10
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz p2, :cond_0

    .line 12
    :try_start_5
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_0
    :goto_2
    throw p0

    :cond_1
    :goto_3
    return-void
.end method

.method private initBeauty()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    iget v1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    iget v2, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->init(II)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->onInit()V

    .line 2
    invoke-direct {p0}, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->initBeauty()V

    return-void
.end method

.method public initBeautyProcessor(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    .line 3
    iput p2, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDestroy()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    .line 4
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->release()V

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDisplaySizeChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->onDisplaySizeChanged(II)V

    return-void
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 2
    iget-boolean p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 9
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 10
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    const/16 p3, 0xde1

    if-eq p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-eqz p2, :cond_1

    const p2, 0x84c0

    .line 11
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 12
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 13
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysPre()V

    const/4 p2, 0x5

    const/4 v0, 0x4

    .line 15
    invoke-static {p2, p1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 16
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 17
    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysAfter()V

    .line 19
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDrawToTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runPendingOnDrawTasks()V

    .line 3
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 4
    :cond_1
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    if-eq p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameWidth:I

    iget v1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, p1, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 6
    iget-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBuffers:[I

    aget p1, p1, v2

    const v1, 0x8d40

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 7
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 8
    invoke-virtual {p2, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget v3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 10
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 11
    invoke-virtual {p3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget v3, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 13
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 14
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    const/16 p2, 0xde1

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mbGetValidTexureID:Z

    if-eqz p1, :cond_3

    const p1, 0x84c0

    .line 15
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 16
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 17
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysPre()V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 19
    invoke-static {p1, v2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 20
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 21
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawArraysAfter()V

    .line 23
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 24
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 25
    iget p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mOutputWidth:I

    iget p2, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mOutputHeight:I

    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 26
    iget-object p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mFrameBufferTextures:[I

    aget p1, p1, v2

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public onInit()V
    .locals 2

    const-string v0, "attribute vec4 a_position;                         \nattribute vec2 a_texCoord;                         \nvarying vec2 v_texCoord;                           \nvoid main(){                                       \n   gl_Position = a_position;                       \n   v_texCoord = a_texCoord;                        \n}                                                  \n"

    const-string v1, "precision highp float;                             \nvarying vec2 v_texCoord;                           \nuniform sampler2D texture;                         \nvoid main (void){                                  \n   vec3 rgb = texture2D(texture, v_texCoord).rgb;  \n   gl_FragColor = vec4(rgb, 1.0);                  \n}                                                  \n"

    .line 1
    invoke-static {v0, v1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string v1, "a_position"

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribPosition:I

    .line 3
    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string v1, "a_texCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLAttribTextureCoordinate:I

    .line 4
    iget v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLProgId:I

    const-string v1, "texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mGLUniformTexture:I

    .line 5
    iget v0, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowWidth:I

    iget v1, p0, Lcom/miui/filtersdk/filter/NewBeautificationFilter;->mWindowHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->initFrameBuffers(II)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mIsInitialized:Z

    return-void
.end method

.method public onInputSizeChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInputSizeChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->onDisplaySizeChanged(II)V

    return-void
.end method

.method public passPreviewFrameToTexture([BII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->hasPendingDrawTasks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/miui/filtersdk/filter/NewBeautificationFilter$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/filtersdk/filter/NewBeautificationFilter$1;-><init>(Lcom/miui/filtersdk/filter/NewBeautificationFilter;[BII)V

    invoke-virtual {p0, v0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
