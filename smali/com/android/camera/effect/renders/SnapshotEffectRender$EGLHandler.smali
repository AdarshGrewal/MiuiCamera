.class public Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;
.super Landroid/os/Handler;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_DRAW_MAIN_ASYNC:I = 0x1

.field public static final MSG_DRAW_MAIN_SYNC:I = 0x2

.field public static final MSG_DRAW_THUMB:I = 0x4

.field public static final MSG_GET_DRAW_THUMB:I = 0x3

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_PREPARE_EFFECT_RENDER:I = 0x6

.field public static final MSG_RELEASE:I = 0x5


# instance fields
.field public final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B
    .locals 23

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 1
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 2
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyEffect: applyToThumb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_0

    .line 3
    iget-object v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    :goto_0
    const/4 v15, 0x0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_1

    const-string/jumbo v2, "thumb!"

    goto :goto_1

    :cond_1
    const-string v2, "jpeg!"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    :cond_2
    if-nez v12, :cond_3

    .line 5
    iget v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v1, v2, :cond_3

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-direct {v10, v11, v13, v14}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffectOnlyWatermarkRange(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    new-instance v9, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {v9}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    const-string v1, "init Texture"

    .line 10
    invoke-virtual {v9, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v7, v8, [I

    const/4 v6, 0x0

    .line 11
    invoke-static {v8, v7, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 12
    aget v2, v7, v6

    move/from16 v3, p2

    invoke-static {v0, v2, v3}, Lcom/android/camera/effect/ShaderNativeUtil;->initTexture([BII)[I

    move-result-object v2

    .line 13
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 14
    invoke-virtual {v9, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 15
    aget v4, v2, v6

    .line 16
    aget v5, v2, v8

    if-eqz v12, :cond_4

    .line 17
    aget v1, v2, v6

    goto :goto_2

    :cond_4
    iget v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    :goto_2
    move v3, v1

    if-eqz v12, :cond_5

    .line 18
    aget v1, v2, v8

    goto :goto_3

    :cond_5
    iget v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    :goto_3
    move v2, v1

    .line 19
    iget v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-direct {v10, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_6

    .line 20
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "init render failed"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 21
    :cond_6
    instance-of v0, v1, Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_7

    .line 22
    move-object v0, v1

    check-cast v0, Lcom/android/camera/effect/renders/PipeRender;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    .line 23
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 24
    iget-object v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 25
    iget-boolean v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    if-eqz v12, :cond_8

    .line 26
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    goto :goto_4

    .line 27
    :cond_8
    iget v0, v14, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v15, v14, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v1, v0, v15}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 28
    :goto_4
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 29
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 30
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 31
    invoke-direct {v10, v4, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->checkFrameBuffer(II)V

    .line 32
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    iget-object v15, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v15}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 33
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    .line 34
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    aget v15, v7, v6

    invoke-static {v4, v5}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v0, v15, v6, v8}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(ILandroid/graphics/Rect;Z)V

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 35
    invoke-virtual {v1}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    .line 36
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    const/4 v1, 0x4

    const/4 v15, 0x2

    if-ne v0, v1, :cond_a

    if-le v4, v5, :cond_9

    sub-int v0, v4, v5

    .line 37
    div-int/2addr v0, v15

    .line 38
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    mul-int/2addr v1, v5

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v6

    div-int/2addr v1, v6

    sub-int/2addr v0, v1

    move v6, v0

    move v0, v5

    move v15, v0

    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    sub-int v0, v5, v4

    .line 39
    div-int/2addr v0, v15

    .line 40
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    mul-int/2addr v1, v4

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v6

    div-int/2addr v1, v6

    sub-int/2addr v0, v1

    move v1, v0

    move v0, v4

    move v15, v0

    goto :goto_5

    :cond_a
    move v0, v4

    move v15, v5

    const/4 v1, 0x0

    :goto_5
    const/4 v6, 0x0

    .line 41
    :goto_6
    iget-object v8, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWaterInfos:Ljava/util/List;

    move-object/from16 v17, v9

    iget v9, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-boolean v14, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsPortraitRawData:Z

    move v10, v0

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object v1, v8

    move v8, v2

    move v2, v6

    move/from16 v19, v3

    move/from16 v3, v18

    move/from16 v20, v6

    move/from16 v6, v19

    move-object/from16 v21, v7

    move v7, v8

    move v8, v9

    move-object/from16 v22, v17

    move v9, v14

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZ)V

    if-eqz v12, :cond_b

    if-eqz v13, :cond_c

    .line 42
    iput v10, v13, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    .line 43
    iput v15, v13, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    .line 44
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thumbSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 45
    :cond_b
    iput v10, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 46
    iput v15, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 47
    :cond_c
    :goto_7
    iget-boolean v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_10

    move-object/from16 v0, p0

    move v4, v10

    if-nez v12, :cond_d

    .line 48
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    iget-object v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v2, v11, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1800(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1702(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 49
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    iget-object v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v2, v11, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2000(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 50
    iget v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object v5, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v6

    invoke-static {v1, v2, v3, v5, v6}, Lcom/android/camera/Util;->getWatermarkRange(IIILcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/renders/WaterMark;)[I

    move-result-object v1

    .line 51
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyEffect: rotation = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", watermarkRange = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 54
    aget v3, v1, v2

    move/from16 v5, v20

    add-int/2addr v3, v5

    const/4 v6, 0x1

    aget v7, v1, v6

    move/from16 v8, v18

    add-int/2addr v7, v8

    const/4 v9, 0x2

    aget v9, v1, v9

    const/4 v10, 0x3

    aget v10, v1, v10

    iget-object v13, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v13}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v13

    invoke-static {v3, v7, v9, v10, v13}, Lcom/android/camera/effect/ShaderNativeUtil;->getPicture(IIIII)[B

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_8

    :cond_d
    move/from16 v8, v18

    move/from16 v5, v20

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v16, 0x0

    .line 55
    :goto_8
    iget-object v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 56
    iget-object v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    iget v7, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-direct {v0, v3, v5, v8, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 57
    iget-object v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iget-object v7, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    .line 58
    :cond_e
    iget-object v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 59
    iget-object v3, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    iget v7, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-direct {v0, v3, v5, v8, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 60
    iget-object v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iget-object v7, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    :cond_f
    move-object v3, v1

    move-object/from16 v1, v16

    goto :goto_9

    :cond_10
    move-object/from16 v0, p0

    move v4, v10

    move/from16 v8, v18

    move/from16 v5, v20

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    const-string v7, "draw"

    move-object/from16 v9, v22

    .line 61
    invoke-virtual {v9, v7}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    const/16 v7, 0xd05

    .line 62
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 63
    iget-object v7, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v7

    if-eqz v12, :cond_11

    .line 64
    iget-object v7, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v7

    sget-object v10, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v10, v2}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 65
    :cond_11
    iget v10, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    const/4 v13, 0x5

    if-ne v10, v13, :cond_12

    if-nez v12, :cond_12

    .line 66
    iget-object v10, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v10}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v10

    move-object/from16 v12, p5

    iget v13, v12, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v12, v12, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-static {v10, v13, v12}, Lcom/android/camera/Util;->drawMiMovieBlackBridgeEGL(Lcom/android/gallery3d/ui/BaseGLCanvas;II)V

    .line 67
    :cond_12
    invoke-static {v5, v8, v4, v15, v7}, Lcom/android/camera/effect/ShaderNativeUtil;->getPicture(IIIII)[B

    move-result-object v4

    const-string/jumbo v5, "readpixels"

    .line 68
    invoke-virtual {v9, v5}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    move-object/from16 v5, v21

    .line 69
    aget v7, v5, v2

    invoke-static {v7}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 70
    invoke-static {v6, v5, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 71
    :cond_13
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    .line 72
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 73
    iget-boolean v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v2, :cond_14

    .line 74
    iput-object v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    .line 75
    iput-object v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    :cond_14
    return-object v4
.end method

.method private applyEffectOnlyWatermarkRange(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iget v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 2
    :goto_0
    iget-boolean v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-nez v6, :cond_1

    if-nez v3, :cond_1

    .line 3
    iget-object v1, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    return-object v1

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    iget-object v8, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-static {v8, v4}, Lcom/android/camera/effect/ShaderNativeUtil;->decompressPicture([BI)[I

    move-result-object v8

    .line 6
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "jpeg decompress total time ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v7, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    .line 8
    aget v9, v8, v5

    aget v8, v8, v4

    const/4 v10, 0x2

    if-eqz v3, :cond_3

    if-le v9, v8, :cond_2

    sub-int v11, v9, v8

    .line 9
    div-int/2addr v11, v10

    .line 10
    iget-object v12, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v12}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v12

    mul-int/2addr v12, v8

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v13

    div-int/2addr v12, v13

    sub-int/2addr v11, v12

    move v12, v5

    move v13, v11

    goto :goto_1

    :cond_2
    sub-int/2addr v8, v9

    .line 11
    div-int/2addr v8, v10

    .line 12
    iget-object v11, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v11}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v11

    mul-int/2addr v11, v9

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v12

    div-int/2addr v11, v12

    sub-int/2addr v8, v11

    move v13, v5

    move v12, v8

    move v8, v9

    :goto_1
    move v11, v8

    goto :goto_2

    :cond_3
    move v12, v5

    move v13, v12

    move v11, v8

    move v8, v9

    .line 13
    :goto_2
    iput v8, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 14
    iput v11, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    if-eqz v3, :cond_4

    .line 15
    iget-boolean v14, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    if-nez v14, :cond_4

    iget-object v14, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    if-nez v14, :cond_4

    .line 16
    invoke-static {v13, v12}, Lcom/android/camera/effect/ShaderNativeUtil;->getCenterSquareImage(II)V

    .line 17
    iget-object v1, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    invoke-static {v8, v11, v1}, Lcom/android/camera/effect/ShaderNativeUtil;->compressPicture(III)[B

    move-result-object v1

    return-object v1

    .line 18
    :cond_4
    iget-object v14, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v14}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v15

    iget-object v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v15, v1, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1800(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1702(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 19
    iget-object v5, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v14

    iget-object v15, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v14, v1, v15}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2000(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v14

    invoke-static {v5, v14}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 20
    iget v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v14, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget v15, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object v4, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v4

    iget-object v10, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v10}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v10

    invoke-static {v5, v14, v15, v4, v10}, Lcom/android/camera/Util;->getWatermarkRange(IIILcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/renders/WaterMark;)[I

    move-result-object v4

    .line 21
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "applyEffectOnlyWatermarkRange: rotation = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", watermarkRange = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 23
    invoke-static {v5, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    .line 24
    aget v10, v4, v5

    const/4 v5, 0x3

    aget v14, v4, v5

    .line 25
    iget-object v15, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v15}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 26
    iget-object v15, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v15}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v15

    invoke-virtual {v15, v10, v14}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->reszieBuffer(II)V

    .line 27
    iget-object v15, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v15, v10}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 28
    iget-object v15, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v15, v14}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const/4 v15, 0x1

    new-array v5, v15, [I

    .line 30
    invoke-static {}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->genTexture()I

    move-result v16

    const/16 v21, 0x0

    aput v16, v5, v21

    .line 31
    aget v16, v4, v21

    move/from16 v21, v11

    add-int v11, v16, v13

    aget v16, v4, v15

    add-int v15, v16, v12

    move/from16 v17, v8

    const/16 v16, 0x2

    aget v8, v4, v16

    move/from16 v23, v3

    const/16 v20, 0x3

    aget v3, v4, v20

    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    invoke-static {v11, v15, v8, v3, v2}, Lcom/android/camera/effect/ShaderNativeUtil;->getJpegFromMemImage(IIIII)[B

    move-result-object v2

    const/4 v3, 0x1

    .line 32
    aget v8, v4, v3

    add-int/2addr v8, v12

    mul-int/2addr v8, v9

    const/4 v3, 0x0

    aget v11, v4, v3

    add-int/2addr v11, v13

    add-int/2addr v8, v11

    mul-int/lit8 v8, v8, 0x3

    .line 33
    aget v11, v5, v3

    invoke-static {v11, v10, v14, v9, v8}, Lcom/android/camera/effect/ShaderNativeUtil;->updateTextureWidthStride(IIIII)V

    .line 34
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get pixel and upload total time ="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move v15, v12

    sub-long v11, v24, v18

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-direct {v0, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    if-nez v3, :cond_5

    .line 36
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "init render failed"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    return-object v1

    .line 38
    :cond_5
    invoke-virtual {v3, v6, v7}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 39
    iget-object v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v3, v6}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 40
    iget-boolean v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v3, v6}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    move-object/from16 v6, p3

    .line 41
    iget v7, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v6, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v3, v7, v6}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 42
    iget v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v3, v6}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 43
    iget v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v3, v6}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 44
    iget v6, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v3, v6}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 45
    iget-object v6, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->getFrameBufferId()I

    move-result v6

    .line 46
    iget-object v7, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v7

    invoke-virtual {v7, v6, v10, v14}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(III)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 48
    move-object v9, v3

    check-cast v9, Lcom/android/camera/effect/renders/PipeRender;

    new-instance v11, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    move/from16 v18, v15

    const/4 v12, 0x0

    aget v15, v5, v12

    invoke-static {v10, v14}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v12

    move-object/from16 v19, v2

    const/4 v2, 0x1

    invoke-direct {v11, v15, v12, v2}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(ILandroid/graphics/Rect;Z)V

    invoke-virtual {v9, v11}, Lcom/android/camera/effect/renders/PipeRender;->drawOnExtraFrameBufferOnce(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 49
    invoke-virtual {v3}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    const/4 v9, 0x0

    .line 50
    aget v11, v4, v9

    .line 51
    aget v9, v4, v2

    .line 52
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 53
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    neg-int v12, v11

    neg-int v15, v9

    move-object/from16 v22, v5

    iget v5, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-direct {v0, v2, v12, v15, v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 54
    iget-object v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iget-object v5, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    goto :goto_3

    :cond_6
    move-object/from16 v22, v5

    .line 55
    :goto_3
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 56
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    neg-int v5, v11

    neg-int v9, v9

    iget v11, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-direct {v0, v2, v5, v9, v11}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 57
    iget-object v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iget-object v5, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    .line 58
    :cond_7
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drawTime="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v3}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    .line 60
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    if-eqz v23, :cond_8

    move/from16 v5, v18

    .line 61
    invoke-static {v13, v5}, Lcom/android/camera/effect/ShaderNativeUtil;->getCenterSquareImage(II)V

    const/4 v2, 0x1

    .line 62
    aget v3, v4, v2

    mul-int v3, v3, v17

    const/4 v2, 0x0

    aget v5, v4, v2

    add-int/2addr v3, v5

    const/4 v2, 0x3

    mul-int/2addr v3, v2

    .line 63
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2, v10, v14, v3}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->readBuffer(III)V

    goto :goto_4

    .line 64
    :cond_8
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v2

    invoke-virtual {v2, v10, v14, v8}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->readBuffer(III)V

    .line 65
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    iget-object v5, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    move/from16 v9, v17

    move/from16 v8, v21

    invoke-static {v9, v8, v5}, Lcom/android/camera/effect/ShaderNativeUtil;->compressPicture(III)[B

    move-result-object v5

    .line 67
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compress="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 68
    aget v3, v22, v2

    invoke-static {v3}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v3, v22

    const/4 v6, 0x1

    .line 69
    invoke-static {v6, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 70
    :cond_9
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    .line 71
    iget-object v2, v0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    move-object/from16 v2, v19

    .line 72
    iput-object v2, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    .line 73
    iput-object v4, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    return-object v5
.end method

.method private applyMiMovieBlackBridge(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderNativeUtil;->decompressPicture([BI)[I

    move-result-object v0

    .line 2
    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    const/4 v4, 0x0

    .line 3
    aget v5, v0, v4

    aget v0, v0, v1

    .line 4
    iput v5, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 5
    iput v0, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 6
    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 7
    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->reszieBuffer(II)V

    new-array v6, v1, [I

    .line 8
    invoke-static {}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->genTexture()I

    move-result v7

    aput v7, v6, v4

    .line 9
    aget v7, v6, v4

    invoke-static {v7, v5, v0, v5, v4}, Lcom/android/camera/effect/ShaderNativeUtil;->updateTextureWidthStride(IIIII)V

    .line 10
    sget v7, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    invoke-direct {p0, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v7

    if-nez v7, :cond_0

    .line 11
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "init render failed"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 12
    :cond_0
    invoke-virtual {v7, v2, v3}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 13
    iget-object v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v7, v2}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 14
    iget-boolean v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v7, v2}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    .line 15
    iget v2, p2, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v3, p2, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v7, v2, v3}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 16
    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v7, v2}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 17
    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v7, v2}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 18
    iget p1, p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v7, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->getFrameBufferId()I

    move-result p1

    .line 20
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v2

    invoke-virtual {v2, p1, v5, v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(III)V

    .line 21
    move-object p1, v7

    check-cast p1, Lcom/android/camera/effect/renders/PipeRender;

    new-instance v2, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    aget v3, v6, v4

    invoke-static {v5, v0}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v2, v3, v8, v1}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(ILandroid/graphics/Rect;Z)V

    invoke-virtual {p1, v2}, Lcom/android/camera/effect/renders/PipeRender;->drawOnExtraFrameBufferOnce(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 22
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p1

    iget v2, p2, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget p2, p2, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-static {p1, v2, p2}, Lcom/android/camera/Util;->drawMiMovieBlackBridgeEGL(Lcom/android/gallery3d/ui/BaseGLCanvas;II)V

    .line 23
    invoke-virtual {v7}, Lcom/android/camera/effect/renders/Render;->deleteBuffer()V

    .line 24
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 25
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object p1

    invoke-virtual {p1, v5, v0, v4}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->readBuffer(III)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result p1

    invoke-static {v5, v0, p1}, Lcom/android/camera/effect/ShaderNativeUtil;->compressPicture(III)[B

    move-result-object p1

    .line 27
    aget p2, v6, v4

    invoke-static {p2}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 28
    invoke-static {v1, v6, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    .line 30
    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    return-object p1
.end method

.method private blockSplitApplyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)V
    .locals 34

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v0, p3

    move-object/from16 v1, p5

    .line 1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyEffect: applyToThumb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v2}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    :goto_0
    if-nez v2, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "thumb!"

    goto :goto_1

    :cond_1
    const-string v0, "jpeg!"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_2
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 5
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->genTexture()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2202(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 6
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/effect/framework/image/MemImage;->getPixelsFromJpg([B)V

    .line 7
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v2

    iget v12, v2, Lcom/android/camera/effect/framework/image/MemImage;->mWidth:I

    .line 8
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v2

    iget v13, v2, Lcom/android/camera/effect/framework/image/MemImage;->mHeight:I

    .line 9
    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    move v14, v2

    .line 10
    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    move v15, v2

    .line 11
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v2

    const-string v3, "[NewEffectFramework]start"

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    .line 12
    new-instance v2, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {v2}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    const-string v3, "local start"

    .line 13
    invoke-virtual {v2, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    .line 14
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/Splitter;

    move-result-object v16

    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/effect/framework/image/MemImage;->mWidth:I

    iget-object v4, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/effect/framework/image/MemImage;->mHeight:I

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v19

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v20

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v21

    iget-object v5, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v22

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v16 .. v22}, Lcom/android/camera/effect/framework/graphics/Splitter;->split(IIIIII)Ljava/util/List;

    move-result-object v9

    const-string v3, "local start setImageSettings"

    .line 15
    invoke-virtual {v2, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 16
    iget v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    invoke-direct {v10, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getEffectRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v8

    if-nez v8, :cond_3

    .line 17
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init render failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_3
    invoke-virtual {v8, v14, v15}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 19
    iget-object v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {v8, v3}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 20
    iget-boolean v3, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    invoke-virtual {v8, v3}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v8, v12, v13}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    goto :goto_2

    .line 22
    :cond_4
    iget v0, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v1, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    invoke-virtual {v8, v0, v1}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    .line 23
    :goto_2
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    invoke-virtual {v8, v0}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 24
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    invoke-virtual {v8, v0}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    .line 25
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v8, v0}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    const-string v0, "local start render"

    .line 26
    invoke-virtual {v2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 27
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->getFrameBufferId()I

    move-result v0

    .line 28
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v3

    iget-object v4, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(III)V

    const-string v0, "local beginBindFrameBuffer"

    .line 29
    invoke-virtual {v2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 30
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 31
    invoke-virtual {v2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 32
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    if-ne v0, v7, :cond_6

    if-le v12, v13, :cond_5

    sub-int v0, v12, v13

    .line 33
    div-int/2addr v0, v6

    .line 34
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    mul-int/2addr v1, v13

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v4, v0

    move v3, v5

    move v0, v13

    goto :goto_3

    :cond_5
    sub-int v0, v13, v12

    .line 35
    div-int/2addr v0, v6

    .line 36
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    mul-int/2addr v1, v12

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v3, v0

    move v4, v5

    move v0, v12

    :goto_3
    move v1, v0

    goto :goto_4

    :cond_6
    move v3, v5

    move v4, v3

    move v0, v12

    move v1, v13

    .line 37
    :goto_4
    iput v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 38
    iput v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    .line 39
    iget-boolean v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 40
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    iget-object v7, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v1, v11, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1800(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1702(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 41
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    iget-object v7, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    invoke-static {v1, v11, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2000(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1902(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    .line 42
    iget v0, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v1, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget v7, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object v6, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v6

    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    invoke-static {v0, v1, v7, v6, v2}, Lcom/android/camera/Util;->getWatermarkRange(IIILcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/renders/WaterMark;)[I

    move-result-object v1

    .line 43
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockSplitApplyEffect: rotation = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v11, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", watermarkRange = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    aget v2, v1, v5

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/4 v6, 0x1

    aget v7, v1, v6

    add-int/2addr v7, v3

    int-to-float v7, v7

    aget v16, v1, v5

    add-int v16, v16, v4

    const/16 v17, 0x2

    aget v18, v1, v17

    add-int v5, v16, v18

    int-to-float v5, v5

    aget v16, v1, v6

    add-int v16, v16, v3

    const/4 v6, 0x3

    aget v18, v1, v6

    add-int v6, v16, v18

    int-to-float v6, v6

    invoke-direct {v0, v2, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    .line 47
    aget v5, v1, v2

    add-int/2addr v5, v4

    const/4 v2, 0x1

    aget v6, v1, v2

    add-int/2addr v6, v3

    const/4 v2, 0x2

    aget v7, v1, v2

    move-object/from16 v16, v0

    const/4 v2, 0x3

    aget v0, v1, v2

    invoke-static {v5, v6, v7, v0, v2}, Lcom/android/camera/effect/ShaderNativeUtil;->genWaterMarkRange(IIIII)V

    move-object v6, v1

    move-object/from16 v7, v16

    goto :goto_5

    :cond_7
    move-object v6, v1

    move-object v7, v6

    .line 48
    :goto_5
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    .line 49
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_b

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v1, v16

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x1

    aput-object v0, v1, v16

    const-string v0, "[loop%d/%d]begin"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    .line 52
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/framework/graphics/Block;

    .line 53
    iget v1, v0, Lcom/android/camera/effect/framework/graphics/Block;->mWidth:I

    move-object/from16 v16, v7

    .line 54
    iget v7, v0, Lcom/android/camera/effect/framework/graphics/Block;->mHeight:I

    move-object/from16 v24, v6

    .line 55
    iget v6, v0, Lcom/android/camera/effect/framework/graphics/Block;->mRowStride:I

    move/from16 v25, v15

    .line 56
    iget v15, v0, Lcom/android/camera/effect/framework/graphics/Block;->mOffset:I

    move/from16 v26, v14

    .line 57
    iget-object v14, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v14}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v14

    iget v14, v14, Lcom/android/camera/effect/framework/image/MemImage;->mChannels:I

    const/4 v11, 0x0

    .line 58
    invoke-static {v11, v11, v1, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v11, 0x0

    move/from16 v27, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 59
    invoke-static {v3, v11, v11, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v3, 0x4100

    .line 60
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/Object;

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v17, 0x0

    aput-object v3, v11, v17

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x1

    aput-object v3, v11, v18

    const-string v3, "[loop%d/%d]gl predraw"

    invoke-static {v3, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 62
    iget-object v11, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v11}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    mul-int/2addr v15, v14

    .line 63
    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v18

    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v19

    move/from16 v20, v1

    move/from16 v21, v7

    move/from16 v22, v6

    move/from16 v23, v15

    invoke-virtual/range {v18 .. v23}, Lcom/android/camera/effect/framework/image/MemImage;->textureWithStride(IIIII)V

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v6, v14

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v6, v14

    iget-object v11, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v11}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v6, v14

    const-string v11, "[loop%d/%d]gl uploadtexture textureId %d"

    invoke-static {v11, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 65
    iget-object v11, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v11}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 66
    move-object v6, v8

    check-cast v6, Lcom/android/camera/effect/renders/PipeRender;

    new-instance v11, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget-object v3, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v3

    invoke-static {v1, v7}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v14

    move/from16 v18, v2

    const/4 v2, 0x1

    invoke-direct {v11, v3, v14, v2}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(ILandroid/graphics/Rect;Z)V

    invoke-virtual {v6, v11}, Lcom/android/camera/effect/renders/PipeRender;->drawOnExtraFrameBufferOnce(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 67
    invoke-virtual {v0, v12, v13}, Lcom/android/camera/effect/framework/graphics/Block;->getOffset(II)[I

    move-result-object v11

    const/4 v6, 0x0

    .line 68
    aget v0, v11, v6

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->left:F

    .line 69
    aget v0, v11, v2

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->top:F

    .line 70
    aget v0, v11, v6

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 71
    aget v0, v11, v2

    add-int/2addr v0, v7

    int-to-float v0, v0

    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 72
    aget v0, v11, v6

    sub-int v14, v4, v0

    .line 73
    aget v0, v11, v2

    sub-int v3, v27, v0

    .line 74
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    move-object/from16 v0, p1

    .line 75
    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWaterInfos:Ljava/util/List;

    move/from16 v17, v1

    aget v1, v11, v6

    neg-int v1, v1

    const/16 v19, 0x1

    aget v6, v11, v19

    neg-int v6, v6

    move-object/from16 v20, v8

    iget v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move-object/from16 v21, v9

    iget-boolean v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsPortraitRawData:Z

    move/from16 v22, v15

    move-object v15, v0

    move-object/from16 v0, p0

    move/from16 v28, v17

    move/from16 v17, v1

    move-object v1, v2

    move/from16 p2, v14

    move/from16 v14, v19

    move/from16 v2, v17

    move/from16 v30, v3

    move/from16 v29, v27

    move v3, v6

    move v6, v4

    move v4, v12

    move-object v14, v5

    move/from16 v23, v12

    const/4 v12, 0x0

    move v5, v13

    move/from16 v31, v6

    move-object/from16 v32, v24

    move/from16 v6, v26

    move/from16 v33, v7

    move/from16 v24, v13

    move-object/from16 v12, v16

    const/4 v13, 0x4

    move/from16 v7, v25

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZ)V

    .line 76
    iget-boolean v0, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_9

    .line 77
    iget v1, v14, Landroid/graphics/RectF;->left:F

    iget v2, v14, Landroid/graphics/RectF;->top:F

    .line 78
    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, v12, Landroid/graphics/RectF;->left:F

    iget v6, v12, Landroid/graphics/RectF;->top:F

    .line 79
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v8

    move-object/from16 v0, p0

    .line 80
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->rectangle_collision(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    iget v1, v14, Landroid/graphics/RectF;->left:F

    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v3, v14, Landroid/graphics/RectF;->right:F

    iget v4, v14, Landroid/graphics/RectF;->bottom:F

    iget v5, v12, Landroid/graphics/RectF;->left:F

    iget v6, v12, Landroid/graphics/RectF;->top:F

    iget v7, v12, Landroid/graphics/RectF;->right:F

    iget v8, v12, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->getIntersectRect(FFFFFFFF)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    aget v2, v0, v1

    float-to-int v3, v2

    const/4 v2, 0x1

    aget v4, v0, v2

    float-to-int v4, v4

    const/4 v9, 0x2

    aget v5, v0, v9

    aget v6, v0, v1

    sub-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x3

    aget v7, v0, v6

    aget v0, v0, v2

    sub-float/2addr v7, v0

    float-to-int v6, v7

    aget v7, v11, v1

    aget v8, v11, v2

    const/4 v0, 0x3

    move v1, v9

    move v9, v0

    invoke-static/range {v3 .. v9}, Lcom/android/camera/effect/ShaderNativeUtil;->mergeWaterMarkRange(IIIIIII)V

    .line 83
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 84
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    iget v2, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move/from16 v4, p2

    move/from16 v3, v30

    invoke-direct {v10, v0, v4, v3, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 85
    iget-object v0, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    goto :goto_7

    :cond_8
    move/from16 v4, p2

    move/from16 v3, v30

    .line 86
    :goto_7
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 87
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    iget v2, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-direct {v10, v0, v4, v3, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    .line 88
    iget-object v0, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    goto :goto_8

    :cond_9
    const/4 v1, 0x2

    .line 89
    :cond_a
    :goto_8
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    new-array v0, v1, [Ljava/lang/Object;

    .line 90
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "[loop%d/%d]gl gldraw"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 93
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v0

    move/from16 v4, v22

    move/from16 v2, v28

    move/from16 v3, v33

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->readBuffer(III)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 94
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "[loop%d/%d]gl readPixelAndMerge"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    add-int/lit8 v2, v18, 0x1

    move-object v7, v12

    move-object v5, v14

    move-object v11, v15

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v15, v25

    move/from16 v14, v26

    move/from16 v3, v29

    move/from16 v4, v31

    move-object/from16 v6, v32

    goto/16 :goto_6

    :cond_b
    move/from16 v29, v3

    move/from16 v31, v4

    move-object/from16 v32, v6

    move-object v15, v11

    const/4 v13, 0x4

    .line 96
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsTexture(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 97
    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 98
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 99
    :cond_c
    iget v0, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    if-ne v0, v13, :cond_d

    move/from16 v0, v29

    move/from16 v5, v31

    .line 100
    invoke-static {v5, v0}, Lcom/android/camera/effect/ShaderNativeUtil;->getCenterSquareImage(II)V

    .line 101
    :cond_d
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 102
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    .line 103
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 104
    iget-boolean v0, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_e

    .line 105
    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderNativeUtil;->getWaterMarkRange(II)[B

    move-result-object v0

    .line 106
    iput-object v0, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    move-object/from16 v1, v32

    .line 107
    iput-object v1, v15, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    :cond_e
    return-void
.end method

.method private checkFrameBuffer(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 2
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 3
    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/FrameBuffer;)Lcom/android/camera/effect/FrameBuffer;

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance v1, Lcom/android/camera/effect/FrameBuffer;

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/FrameBuffer;)Lcom/android/camera/effect/FrameBuffer;

    :cond_1
    return-void
.end method

.method private drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;IIIIIIIZ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOOOo()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p9, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    move-object v1, p1

    invoke-direct {v0, p1}, Lcom/android/camera/watermark/WaterMarkBitmap;-><init>(Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v11, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;

    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v11

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/camera/effect/renders/AgeGenderAndMagicMirrorWaterMark;-><init>(Landroid/graphics/Bitmap;IIIIIFF)V

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getOrientation()I

    move-result v1

    sub-int v1, p8, v1

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct {p0, v11, p2, p3, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->releaseBitmap()V

    .line 8
    const-class v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Draw age_gender_and_magic_mirror water mark"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    return-void

    :cond_3
    :goto_2
    move-object v2, p0

    return-void
.end method

.method private drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z
    .locals 45

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 1
    new-instance v10, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-direct {v10, v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)V

    const/4 v11, 0x1

    move v2, v11

    .line 2
    :goto_0
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    sget v1, Lcom/android/gallery3d/ui/BaseGLCanvas;->sMaxTextureSize:I

    const/4 v3, 0x2

    if-gt v0, v1, :cond_5

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    if-le v0, v1, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v4, v12

    iget v5, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    iget v5, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "downScale: %d width: %d %d parallel: %b"

    .line 5
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    if-nez v9, :cond_1

    move v13, v11

    goto :goto_1

    :cond_1
    move v13, v12

    .line 7
    :goto_1
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v1, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v13, :cond_2

    const/4 v0, 0x0

    .line 10
    invoke-direct {v6, v7, v0, v10}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffectOnlyWatermarkRange(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    .line 11
    invoke-direct {v6, v7, v8, v9, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z

    move-result v0

    return v0

    .line 12
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v10

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    .line 14
    invoke-direct {v6, v7, v12, v9, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v10

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->blockSplitApplyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)V

    .line 16
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v0

    const-string v1, "[NewEffectFramework] done"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 17
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/image/MemImage;

    move-result-object v0

    iget-object v1, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v1

    iget v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/effect/framework/image/MemImage;->encodeJpeg(III)[B

    move-result-object v15

    if-eqz v13, :cond_4

    .line 18
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    move-object v14, v0

    iget-boolean v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mNeedThumbnail:Z

    move/from16 v16, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    move/from16 v17, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    move/from16 v18, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    move/from16 v19, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    move/from16 v20, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    move/from16 v21, v1

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-object/from16 v22, v1

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    move-object/from16 v23, v1

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-wide v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    move-wide/from16 v25, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    move/from16 v27, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move/from16 v28, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    move/from16 v29, v1

    iget-boolean v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    move/from16 v30, v1

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    move-object/from16 v31, v1

    iget-boolean v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    move/from16 v32, v1

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    move-object/from16 v33, v1

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWaterInfos:Ljava/util/List;

    move-object/from16 v34, v1

    iget-boolean v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    move/from16 v35, v1

    iget-boolean v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsUltraPixelWatermarkEnabled:Z

    move/from16 v36, v1

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    move-object/from16 v37, v1

    iget-boolean v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasDualWaterMark:Z

    move/from16 v38, v1

    iget-boolean v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasFrontWaterMark:Z

    move/from16 v39, v1

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-object/from16 v40, v1

    iget-boolean v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsPortraitRawData:Z

    move/from16 v41, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    move/from16 v42, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewThumbnailHash:I

    move/from16 v43, v1

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    move/from16 v44, v1

    invoke-direct/range {v14 .. v44}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;-><init>([BZIIIIILcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZLjava/lang/String;ZLcom/xiaomi/camera/core/PictureInfo;Ljava/util/List;ZZLjava/lang/String;ZZLcom/android/camera/effect/renders/DeviceWatermarkParam;ZIII)V

    .line 19
    invoke-direct {v6, v0, v10}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyMiMovieBlackBridge(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    .line 20
    invoke-direct {v6, v7, v8, v9, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z

    goto :goto_2

    .line 21
    :cond_4
    invoke-direct {v6, v7, v12, v9, v15}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z

    .line 22
    :goto_2
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v0

    const-string v1, "TOTAL finish"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    return v11

    .line 23
    :cond_5
    :goto_3
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    div-int/2addr v0, v3

    iput v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 24
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    div-int/2addr v0, v3

    iput v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    mul-int/lit8 v2, v2, 0x2

    goto/16 :goto_0
.end method

.method private drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z
    .locals 35

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3100(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)Lcom/android/gallery3d/exif/ExifInterface;

    move-result-object v0

    iput-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    .line 3
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->addAlgorithmComment(Ljava/lang/String;)Z

    .line 5
    :cond_0
    new-instance v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;

    iget-object v0, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-direct {v8, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v8

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;IZLcom/android/camera/effect/renders/SnapshotEffectRender$Size;Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;)[B

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawThumbJpeg: thumbLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string v3, "null"

    goto :goto_0

    :cond_1
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/exif/ExifInterface;->setCompressedThumbnail([B)Z

    :cond_2
    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 9
    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    if-eqz v1, :cond_3

    move/from16 v20, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move/from16 v20, v1

    .line 11
    :goto_1
    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v9

    iget-wide v10, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    const/4 v12, 0x0

    iget-object v13, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    const/4 v14, 0x0

    iget v15, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v1, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v2, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    const/16 v19, 0x0

    move/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v9 .. v20}, Lcom/android/camera/ExifTool;->updateExif([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;Landroid/hardware/camera2/impl/CameraMetadataNative;Z)[B

    move-result-object v27

    .line 12
    iget-object v1, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v21

    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    iget-wide v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v4, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v5, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    const/16 v28, 0x0

    iget v9, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->width:I

    iget v8, v8, Lcom/android/camera/effect/renders/SnapshotEffectRender$Size;->height:I

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v22, v1

    move-wide/from16 v23, v2

    move-object/from16 v25, v4

    move/from16 v26, v5

    move/from16 v29, v9

    move/from16 v30, v8

    invoke-static/range {v21 .. v34}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BZIIZZZZ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    .line 13
    iget-object v1, v6, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    .line 14
    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 15
    iget-object v3, v7, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method private drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    if-eqz p4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v2

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    neg-int p4, p4

    int-to-float p4, p4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2, v2, v1}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    .line 4
    iget-object p4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    neg-int v0, p2

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    neg-int v1, p3

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p4, v0, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getLeft()I

    move-result p4

    add-int/2addr p2, p4

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTop()I

    move-result p4

    add-int/2addr p3, p4

    .line 7
    iget-object p4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object p4

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v2

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result p1

    .line 10
    invoke-static {p2, p3, v2, p1}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    .line 11
    invoke-virtual {p4, v0}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 12
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private fetchRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->prepareEffectRenders(ZI)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getEffectRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 7

    .line 1
    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 2
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v1, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v3

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 5
    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->removeRender(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeRender cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    const/16 v3, 0xa0

    .line 12
    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "circle"

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "parallel"

    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 16
    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 18
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->getRenderSize()I

    move-result v1

    if-nez v1, :cond_5

    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_5
    return-object v0
.end method

.method private getIntersectRect(FFFFFFFF)[F
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [F

    cmpl-float v1, p1, p5

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p5

    :goto_0
    const/4 p5, 0x0

    aput p1, v0, p5

    const/4 p1, 0x1

    cmpl-float p5, p2, p6

    if-lez p5, :cond_1

    goto :goto_1

    :cond_1
    move p2, p6

    :goto_1
    aput p2, v0, p1

    const/4 p1, 0x2

    cmpg-float p2, p3, p7

    if-gez p2, :cond_2

    goto :goto_2

    :cond_2
    move p3, p7

    :goto_2
    aput p3, v0, p1

    const/4 p1, 0x3

    cmpg-float p2, p4, p8

    if-gez p2, :cond_3

    goto :goto_3

    :cond_3
    move p4, p8

    :goto_3
    aput p4, v0, p1

    return-object v0
.end method

.method private initEGL(Landroid/opengl/EGLContext;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/EglCore;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance v1, Lcom/android/camera/effect/framework/gles/EglCore;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/camera/effect/framework/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1402(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/EglCore;)Lcom/android/camera/effect/framework/gles/EglCore;

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;->release()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance p2, Lcom/android/camera/effect/framework/gles/PbufferSurface;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/EglCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;-><init>(Lcom/android/camera/effect/framework/gles/EglCore;II)V

    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    return-void
.end method

.method private rectangle_collision(FFFFFFFF)Z
    .locals 0

    add-float/2addr p7, p5

    cmpl-float p7, p1, p7

    if-gtz p7, :cond_0

    add-float/2addr p1, p3

    cmpg-float p1, p1, p5

    if-ltz p1, :cond_0

    add-float/2addr p8, p6

    cmpl-float p1, p2, p8

    if-gtz p1, :cond_0

    add-float/2addr p2, p4

    cmpg-float p1, p2, p6

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->release()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/FrameBuffer;)Lcom/android/camera/effect/FrameBuffer;

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->deleteProgram()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/SnapshotCanvas;)Lcom/android/camera/effect/SnapshotCanvas;

    .line 7
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)V

    return-void
.end method

.method private removeRender(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->removeRender(I)V

    return-void
.end method

.method private saveMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ[B)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    .line 1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mainLen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    const-string v5, "null"

    goto :goto_0

    :cond_0
    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 2
    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    :cond_1
    const/4 v2, 0x1

    if-eqz p2, :cond_b

    .line 3
    iget-object v3, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    monitor-enter v3

    .line 4
    :try_start_0
    iget-object v4, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    iget-object v5, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v3, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 8
    new-instance v3, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v3}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 9
    iget-object v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {v3, v7}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 10
    iget-boolean v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mNeedThumbnail:Z

    invoke-virtual {v3, v7}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    if-nez v4, :cond_2

    .line 11
    iget-object v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v7, v4

    :goto_1
    invoke-virtual {v3, v7}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    if-nez v4, :cond_3

    move-object v7, v6

    goto :goto_2

    .line 12
    :cond_3
    iget-object v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v7}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setOldTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 13
    iget-wide v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    invoke-virtual {v3, v7, v8}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 14
    iget-object v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v7}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setUri(Landroid/net/Uri;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 15
    iget-object v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    invoke-virtual {v3, v7}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 16
    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    invoke-virtual {v3, v7}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 17
    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-virtual {v3, v7}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 18
    iget-object v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    invoke-virtual {v3, v7}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setExif(Lcom/android/gallery3d/exif/ExifInterface;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 19
    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    invoke-virtual {v3, v7}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    if-nez v4, :cond_4

    .line 20
    iget-boolean v5, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    :cond_4
    invoke-virtual {v3, v5}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    move/from16 v15, p3

    .line 21
    invoke-virtual {v3, v15}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setParallelProcess(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 22
    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setAlgorithmName(Ljava/lang/String;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 23
    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    invoke-virtual {v3, v4}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 24
    iget v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewThumbnailHash:I

    invoke-virtual {v3, v0}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 25
    iget-object v0, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$2900(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    goto/16 :goto_6

    :cond_5
    move/from16 v15, p3

    .line 26
    iget-object v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget-wide v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v11, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    iget v13, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v14, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    iget-object v10, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    move-object/from16 v16, v10

    move/from16 v10, p3

    move v15, v3

    invoke-static/range {v7 .. v16}, Lcom/android/camera/ExifTool;->updateExifWithNullCaptureResult([BJZLjava/lang/String;Lcom/xiaomi/camera/core/PictureInfo;IIILandroid/location/Location;)[B

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 27
    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_7

    .line 28
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v3

    const-string v5, "addImageForEffect"

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v3, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v7

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :cond_6
    move-object v8, v4

    iget-wide v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    iget-object v11, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v12, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget-object v13, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    iget v14, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v15, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    const/16 v16, 0x0

    move/from16 v17, p3

    invoke-static/range {v7 .. v17}, Lcom/android/camera/storage/Storage;->addImageForEffect(Landroid/content/Context;Ljava/lang/String;JLandroid/location/Location;I[BIIZZ)Landroid/net/Uri;

    goto/16 :goto_6

    .line 30
    :cond_7
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImage: uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v3, v1, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$3000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    const/4 v9, 0x0

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-eqz v3, :cond_8

    move v10, v2

    goto :goto_3

    :cond_8
    move v10, v5

    :goto_3
    iget-object v11, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUri:Landroid/net/Uri;

    if-nez v4, :cond_9

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move-object v12, v3

    goto :goto_4

    :cond_9
    move-object v12, v4

    :goto_4
    iget-object v13, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    iget v14, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    iget v15, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    :goto_5
    move-object/from16 v17, v6

    move/from16 v16, v3

    invoke-static/range {v7 .. v17}, Lcom/android/camera/storage/Storage;->updateImage(Landroid/content/Context;[BZZLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIILjava/lang/String;)Landroid/net/Uri;

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 33
    :cond_b
    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    if-eqz v3, :cond_d

    .line 34
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    :try_start_2
    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mExif:Lcom/android/gallery3d/exif/ExifInterface;

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    invoke-virtual {v4, v5, v3}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 36
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    if-eqz v4, :cond_c

    .line 37
    iput-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    .line 38
    :cond_c
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 39
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_6
    return v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->prepareEffectRenders(ZI)V

    goto/16 :goto_5

    .line 4
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->release()V

    goto/16 :goto_5

    .line 5
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_5

    .line 7
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    goto/16 :goto_5

    .line 8
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .line 9
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 10
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v2

    .line 11
    :goto_1
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v4

    .line 12
    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    .line 13
    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    iget v8, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-static {v6, v7, v8}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$900(Lcom/android/camera/effect/renders/SnapshotEffectRender;II)I

    move-result v6

    .line 14
    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    const/4 v8, 0x2

    if-eqz v7, :cond_8

    iget v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    if-nez v9, :cond_3

    goto/16 :goto_4

    .line 15
    :cond_3
    iget-object v9, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v9, v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 16
    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget v9, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    div-int/2addr v9, v6

    invoke-static {v7, v9}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$802(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    .line 17
    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 18
    invoke-static {v8}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    const/16 v7, 0xd33

    .line 19
    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 20
    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 21
    iget v7, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 22
    :goto_2
    iget-object v9, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v9}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v9

    invoke-virtual {v6, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    if-le v9, v10, :cond_4

    .line 23
    iget-object v9, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    div-int/lit8 v10, v7, 0x2

    invoke-static {v9, v10}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$702(Lcom/android/camera/effect/renders/SnapshotEffectRender;I)I

    goto :goto_2

    .line 24
    :cond_4
    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v6

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v4

    if-eq v5, v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 26
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->reszieBuffer(II)V

    .line 27
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    goto :goto_3

    .line 28
    :cond_6
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 29
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v5}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$700(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$800(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->initBuffer(II)V

    .line 30
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 31
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v4, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Z)Z

    :goto_3
    if-eqz v3, :cond_7

    if-nez p1, :cond_7

    .line 32
    invoke-direct {p0, v0, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawThumbJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;Z)Z

    .line 33
    :cond_7
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v1

    const-string v3, "TOTAL"

    invoke-virtual {v1, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, v0, v2, p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z

    .line 35
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    .line 36
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 37
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$200(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;->release()V

    .line 38
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    .line 39
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object p1

    const-string v0, "TOTAL"

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_5

    :cond_8
    :goto_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 41
    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    if-eqz v0, :cond_9

    array-length v2, v0

    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v8

    const-string v0, "jpeg data is broken width %d height %d length %d"

    .line 43
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$1000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_5

    .line 46
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_a

    move v2, v1

    :cond_a
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->drawMainJpeg(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;ZZ)Z

    .line 47
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    .line 48
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$400(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 49
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->release()V

    .line 50
    :cond_b
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$500(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$610(Lcom/android/camera/effect/renders/SnapshotEffectRender;)I

    .line 52
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_6
    const/4 p1, 0x0

    .line 53
    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->initEGL(Landroid/opengl/EGLContext;Z)V

    .line 54
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance v0, Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {v0}, Lcom/android/camera/effect/SnapshotCanvas;-><init>()V

    invoke-static {p1, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$102(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/SnapshotCanvas;)Lcom/android/camera/effect/SnapshotCanvas;

    .line 55
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    new-instance v0, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    invoke-direct {v0}, Lcom/android/camera/effect/framework/graphics/GraphicBuffer;-><init>()V

    invoke-static {p1, v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$202(Lcom/android/camera/effect/renders/SnapshotEffectRender;Lcom/android/camera/effect/framework/graphics/GraphicBuffer;)Lcom/android/camera/effect/framework/graphics/GraphicBuffer;

    .line 56
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$000(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;

    if-eqz p1, :cond_c

    .line 57
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$100(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Lcom/android/camera/effect/SnapshotCanvas;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/SurfaceTextureScreenNail;->getWidth()I

    move-result v1

    .line 58
    invoke-interface {p1}, Lcom/android/camera/storage/ImageSaver$ImageSaverCallback;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/SurfaceTextureScreenNail;->getHeight()I

    move-result p1

    .line 59
    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    .line 60
    :cond_c
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->access$300(Lcom/android/camera/effect/renders/SnapshotEffectRender;)Landroid/os/ConditionVariable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void
.end method
