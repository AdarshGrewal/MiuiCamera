.class public Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;
.super Landroid/os/Handler;
.source "MiHWDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Landroid/os/Looper;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Landroid/os/Looper;Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;-><init>(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    const/4 v4, 0x4

    const-wide/16 v5, 0x3e8

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;

    .line 3
    iget-object v0, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v10, v0, [B

    .line 4
    iget-object v2, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v10, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 5
    iget-object v7, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v7}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1300(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)J

    move-result-wide v8

    iget-object p1, p1, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$MediaFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v11, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v0, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    div-long v12, v0, v5

    invoke-virtual/range {v7 .. v13}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->onAudioFrameJni(J[BIJ)V

    goto/16 :goto_2

    .line 6
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    .line 7
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "sample-rate"

    .line 8
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 9
    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1300(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->onAudioFormatJni(JII)V

    goto/16 :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$300(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result p1

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;->getOutputTextureId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->deleteFrameBuffer(II)V

    new-array p1, v2, [I

    .line 12
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$700(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result v0

    aput v0, p1, v1

    invoke-static {v2, p1, v1}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 13
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->destroy()V

    const-string p1, " detete frame "

    .line 14
    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 17
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$802(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$602(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    .line 19
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$200(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$200(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->release()V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1, v2}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1402(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Z)Z

    .line 22
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$202(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Lcom/xiaomi/magicvideoskymediacodec/EglBase;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " recoder end "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1400(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 25
    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->checkError()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 26
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 27
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    .line 28
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$300(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result v0

    iget-object v7, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v7}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;->getOutputTextureId()I

    move-result v7

    invoke-static {v0, v7}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->bindFrameBuffer(II)V

    .line 29
    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->checkError()V

    .line 30
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object v0

    invoke-virtual {v0, v2, v3, p1}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->draw(J[F)V

    .line 31
    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->checkError()V

    .line 32
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    .line 33
    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->checkError()V

    .line 34
    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->unBindFrameBuffer()V

    .line 35
    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->checkError()V

    .line 36
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$900(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result p1

    if-gez p1, :cond_7

    .line 37
    sget p1, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mWidht:I

    sget v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mHeight:I

    mul-int/2addr p1, v0

    mul-int/2addr p1, v4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$300(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result v0

    const v4, 0x8d40

    invoke-static {v4, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 39
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 40
    sget v9, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mWidht:I

    sget v10, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mHeight:I

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    move-object v13, p1

    invoke-static/range {v7 .. v13}, Landroid/opengl/GLES30;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 42
    sget v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mWidht:I

    sget v7, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 44
    invoke-static {v4, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 45
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$908(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kkk"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$900(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpeg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/sdcard/kk"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 47
    :cond_7
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1008(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    .line 48
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1100(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)J

    move-result-wide v0

    const-wide/16 v7, -0x1

    cmp-long p1, v0, v7

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1100(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)J

    move-result-wide v0

    mul-long/2addr v0, v5

    mul-long/2addr v0, v5

    cmp-long p1, v2, v0

    if-ltz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1200(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)J

    move-result-wide v0

    cmp-long p1, v0, v7

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1200(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)J

    move-result-wide v0

    mul-long/2addr v0, v5

    mul-long/2addr v0, v5

    cmp-long p1, v2, v0

    if-gtz p1, :cond_9

    goto :goto_0

    .line 49
    :cond_9
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->getPlayer()Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer;->getOneFrame()V

    goto/16 :goto_2

    .line 50
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$1300(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)J

    move-result-wide v4

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;->getOutputTextureId()I

    move-result p1

    sget v6, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mWidht:I

    sget v7, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mHeight:I

    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    move-wide v1, v4

    move v3, p1

    move v4, v6

    move v5, v7

    move-wide v6, v8

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->onVideoFrameJni(JIIIJ)V

    goto/16 :goto_2

    .line 51
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " createPbufferSurface width "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mWidht:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " shader_egl_context:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$100(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/Logg;->LogI(Ljava/lang/String;)V

    .line 52
    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$100(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->create(Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$202(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Lcom/xiaomi/magicvideoskymediacodec/EglBase;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 54
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->create()Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$202(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Lcom/xiaomi/magicvideoskymediacodec/EglBase;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    .line 55
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$200(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    move-result-object p1

    sget v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mWidht:I

    sget v3, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mHeight:I

    invoke-virtual {p1, v0, v3}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->createPbufferSurface(II)V

    .line 56
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$200(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/EglBase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/EglBase;->makeCurrent()V

    .line 57
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->createFrameBuffer()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$302(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;I)I

    .line 58
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$400(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result p1

    sget v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mWidht:I

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$500(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result p1

    sget v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mHeight:I

    if-ne p1, v0, :cond_c

    move v1, v2

    .line 59
    :cond_c
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;->setReserverResolution(Z)V

    .line 60
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/GlesUtil;->createCameraTexture(Z)I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$702(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;I)I

    .line 61
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$700(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$802(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 62
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$800(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 63
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->Play()V

    .line 64
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->create()V

    .line 65
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {v0}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$700(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;->setInputTextureId(I)V

    .line 66
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object p1

    sget v0, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mWidht:I

    sget v1, Lcom/xiaomi/magicvideoskymediacodec/GlUtil;->mHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/magicvideoskymediacodec/BaseRenderDrawer;->surfaceChangedSize(II)V

    .line 67
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    invoke-static {p1}, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->access$600(Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;)Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/OriginalRenderDrawer;->getOutputTextureId()I

    .line 68
    iget-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder$GLHandler;->this$0:Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;

    iget-object p1, p1, Lcom/xiaomi/magicvideoskymediacodec/MiHWDecoder;->mPlayTask:Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;

    invoke-virtual {p1}, Lcom/xiaomi/magicvideoskymediacodec/MoviePlayer$PlayTask;->execute()V

    :goto_2
    return-void
.end method
