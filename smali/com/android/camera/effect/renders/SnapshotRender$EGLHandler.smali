.class public Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;
.super Landroid/os/Handler;
.source "SnapshotRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_DRAW_MAIN_ASYNC:I = 0x1

.field public static final MSG_DRAW_MAIN_SYNC:I = 0x2

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_PREPARE_EFFECT_RENDER:I = 0x6

.field public static final MSG_RELEASE:I = 0x5


# instance fields
.field public mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

.field public mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field public final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotRender;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private applyEffect(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)[B
    .locals 50

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getEffectRender(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/PipeRender;

    move-result-object v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init render failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyEffect: mOutputSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", picture size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", preview size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    :cond_1
    move v14, v2

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v15

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v7, 0x0

    aget-object v1, v1, v7

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v19

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v20

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "plane0 stride = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", plane1 stride = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->isOutputSquare()Z

    move-result v1

    iget v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const-string v5, ", watermarkRange = "

    const/16 v16, 0x3

    const/16 v17, 0x2

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-nez v2, :cond_2

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v4

    invoke-static {v3, v12, v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1700(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1502(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v4

    invoke-static {v3, v12, v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1900(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1802(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    iget v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v4

    invoke-static {v15, v10, v2, v3, v4}, Lcom/android/camera/Util;->getWatermarkRange(IIILcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/renders/WaterMark;)[I

    move-result-object v18

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyEffect onlyDrawWatermarkRange: rotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-static {v2}, Lcom/xiaomi/camera/base/ImageUtil;->getYuvData(Landroid/media/Image;)[B

    move-result-object v21

    move-object/from16 v2, v21

    move v3, v15

    move v4, v10

    move-object v13, v5

    move/from16 v5, v19

    move/from16 v23, v14

    move v14, v6

    move/from16 v6, v20

    move v14, v7

    move-object/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lcom/android/camera/Util;->getSubYuvImage([BIIII[I)Lcom/android/camera/effect/MiYuvImage;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get sub range data spend total tome ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    move-object/from16 v24, v3

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    move-object/from16 v25, v4

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    move-object/from16 v26, v4

    new-instance v4, Landroid/util/Size;

    move-object/from16 v27, v4

    aget v5, v18, v17

    aget v6, v18, v16

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    iget v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    move/from16 v28, v4

    iget v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    move/from16 v29, v4

    iget v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    move/from16 v30, v4

    iget v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mShootRotation:F

    move/from16 v31, v4

    iget-wide v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDate:J

    move-wide/from16 v32, v4

    iget-boolean v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMirror:Z

    move/from16 v34, v4

    iget-boolean v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    move/from16 v35, v4

    iget-boolean v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mIsHeif:Z

    move/from16 v36, v4

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    move-object/from16 v37, v4

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    move-object/from16 v38, v4

    iget-boolean v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasDualWaterMark:Z

    move/from16 v39, v4

    iget-boolean v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasFrontWaterMark:Z

    move/from16 v40, v4

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-object/from16 v41, v4

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-object/from16 v42, v4

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    move-object/from16 v43, v4

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-object/from16 v44, v4

    iget-object v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-object/from16 v45, v4

    invoke-direct/range {v24 .. v45}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;-><init>(Landroid/media/Image;Landroid/util/Size;Landroid/util/Size;IIIFJZZZLjava/lang/String;Ljava/lang/String;ZZLcom/android/camera/effect/renders/DeviceWatermarkParam;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Ljava/util/List;Lcom/android/camera/aiwatermark/data/WatermarkItem;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    iput-object v2, v3, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    move-object v9, v3

    move-object/from16 v24, v21

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    move-object v13, v5

    move/from16 v23, v14

    move v14, v7

    move-object v9, v12

    move v8, v14

    const/16 v18, 0x0

    const/16 v24, 0x0

    :goto_0
    invoke-direct {v11, v0, v9, v14}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v2, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    if-eqz v8, :cond_4

    aget v2, v18, v17

    move v7, v2

    goto :goto_1

    :cond_4
    move v7, v15

    :goto_1
    if-eqz v8, :cond_5

    aget v2, v18, v16

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v10

    :goto_2
    invoke-direct {v11, v7, v6}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkFrameBuffer(II)V

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    invoke-virtual {v0, v9}, Lcom/android/camera/effect/renders/PipeRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "drawTime="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v2, v25, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/PipeRender;->deleteBuffer()V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v15, v10}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    if-eqz v1, :cond_7

    if-le v15, v10, :cond_6

    sub-int v0, v15, v10

    div-int/lit8 v0, v0, 0x2

    move v14, v0

    move v4, v10

    move v5, v4

    goto :goto_3

    :cond_6
    sub-int v0, v10, v15

    div-int/lit8 v0, v0, 0x2

    move/from16 v25, v0

    move v4, v15

    move v5, v4

    const/4 v14, 0x0

    goto :goto_4

    :cond_7
    move v4, v10

    move v5, v15

    const/4 v14, 0x0

    :goto_3
    const/16 v25, 0x0

    :goto_4
    iget-boolean v0, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    if-eqz v8, :cond_8

    const/4 v0, 0x0

    aget v1, v18, v0

    neg-int v0, v1

    const/4 v1, 0x1

    aget v2, v18, v1

    neg-int v1, v2

    move v13, v0

    move-object/from16 v30, v18

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v18, v1

    goto :goto_5

    :cond_8
    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1700(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1502(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1900(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1802(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v2

    invoke-static {v5, v4, v0, v1, v2}, Lcom/android/camera/Util;->getWatermarkRange(IIILcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/renders/WaterMark;)[I

    move-result-object v18

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyEffect !onlyDrawWatermarkRange: rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    aget v1, v18, v0

    const/4 v0, 0x1

    aget v2, v18, v0

    move/from16 v28, v1

    move/from16 v29, v2

    move-object/from16 v30, v18

    const/4 v13, 0x0

    const/16 v18, 0x0

    :goto_5
    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegQuality:I

    const/16 v1, 0x61

    if-lez v0, :cond_a

    if-le v0, v1, :cond_9

    goto :goto_6

    :cond_9
    move v3, v0

    goto :goto_7

    :cond_a
    :goto_6
    move v3, v1

    :goto_7
    iget-object v1, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    iget-object v0, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v31

    iget-object v0, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v32

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v35, v2

    move v2, v13

    move/from16 v46, v3

    move/from16 v3, v18

    move/from16 v36, v4

    move v4, v15

    move/from16 v37, v5

    move v5, v10

    move/from16 v47, v6

    move/from16 v6, v31

    move/from16 v48, v7

    move/from16 v7, v32

    move/from16 v49, v8

    move/from16 v8, v35

    move/from16 v31, v15

    move-object v15, v9

    move/from16 v9, v33

    move/from16 v32, v10

    move/from16 v10, v34

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZZ)V

    iget-boolean v0, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mIsHeif:Z

    if-nez v0, :cond_b

    add-int v0, v28, v14

    add-int v1, v29, v25

    aget v2, v30, v17

    aget v3, v30, v16

    move/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/ShaderNativeUtil;->getPicture(IIIII)[B

    move-result-object v0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for remove watermark spend more time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v26

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v22, v0

    goto :goto_8

    :cond_b
    const/16 v22, 0x0

    :goto_8
    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    add-int v2, v13, v14

    add-int v3, v18, v25

    iget v4, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    move/from16 v6, v23

    invoke-virtual {v0, v6}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setWatermarkScale(F)V

    goto :goto_9

    :cond_c
    move/from16 v6, v23

    :goto_9
    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    add-int v2, v13, v14

    add-int v3, v18, v25

    iget v4, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setWatermarkScale(F)V

    :cond_d
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watermarkTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v26

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    move/from16 v14, v49

    if-eqz v14, :cond_e

    new-instance v0, Landroid/util/Size;

    move/from16 v10, v47

    move/from16 v2, v48

    invoke-direct {v0, v2, v10}, Landroid/util/Size;-><init>(II)V

    goto :goto_a

    :cond_e
    move/from16 v10, v47

    move/from16 v2, v48

    iget-object v0, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    :goto_a
    invoke-direct {v11, v0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkWatermarkFrameBuffer(Landroid/util/Size;)V

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    invoke-direct {v11, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/RgbToYuvRender;

    const/4 v5, 0x0

    invoke-direct {v11, v1, v15, v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v5, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    iget-object v5, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v6, v0}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v0, v6}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(ILandroid/graphics/Rect;Z)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rgb2YuvTime="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v13, v22

    move-object/from16 v5, v30

    goto :goto_b

    :cond_f
    move/from16 v36, v4

    move/from16 v37, v5

    move v2, v7

    move v14, v8

    move/from16 v32, v10

    move/from16 v31, v15

    move v10, v6

    move-object v15, v9

    move-object/from16 v5, v18

    const/4 v13, 0x0

    :goto_b
    const/16 v0, 0xd05

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz v14, :cond_10

    move v7, v2

    goto :goto_c

    :cond_10
    iget-object v2, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v7

    :goto_c
    if-eqz v14, :cond_11

    move v6, v10

    goto :goto_d

    :cond_11
    iget-object v2, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v6

    :goto_d
    int-to-double v2, v7

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v3, v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v3, v8

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int v4, v2, v3

    const/4 v8, 0x4

    mul-int/2addr v4, v8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v42, 0x1908

    const/16 v43, 0x1401

    move/from16 v40, v2

    move/from16 v41, v3

    move-object/from16 v44, v4

    invoke-static/range {v38 .. v44}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v18, 0x0

    aput-object v2, v8, v18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v17

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v16

    const-string/jumbo v2, "readSize=%dx%d imageSize=%dx%d"

    invoke-static {v10, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readTime="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    if-eqz v14, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v21

    move-object/from16 v16, v24

    move/from16 v17, v37

    move/from16 v18, v36

    move-object/from16 v22, v5

    invoke-static/range {v16 .. v22}, Lcom/android/camera/Util;->coverSubYuvImage([BIIII[B[I)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cover sub range data spend total time ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, v24

    goto :goto_e

    :cond_12
    move-object v6, v0

    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-static {v2, v6, v14}, Lcom/xiaomi/camera/base/ImageUtil;->updateYuvImage(Landroid/media/Image;[BZ)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateImageTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iget-boolean v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_13

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->reverseCalculateRange(IIII[I)[I

    move-result-object v0

    iput-object v13, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iput-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    :cond_13
    return-object v6
.end method

.method private applyEffectForAIWatermark(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)[B
    .locals 50

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x4

    const-string v2, "apply effect For AIWatermark start"

    invoke-static {v11, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getEffectRenderForAI(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/PipeRender;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init render failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v13

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v12, 0x0

    aget-object v3, v3, v12

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v9, 0x1

    aget-object v4, v4, v9

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v17

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v18

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz p2, :cond_1

    iget-object v8, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    :goto_0
    const/4 v11, 0x5

    if-nez v8, :cond_2

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "watermark item is null"

    invoke-static {v11, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-virtual {v8}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v11

    const/16 v2, 0xb

    if-eq v11, v2, :cond_3

    invoke-virtual {v8}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    const/16 v11, 0xc

    if-eq v2, v11, :cond_3

    invoke-virtual {v8}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->hasMove()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    iget v12, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v11, v9, v12}, Lcom/android/camera/statistic/CameraStatUtils;->trackAIWatermarkCapture(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {v10, v7, v8}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getLocation(Landroid/graphics/Rect;Lcom/android/camera/aiwatermark/data/WatermarkItem;)[I

    move-result-object v21

    const/4 v2, 0x0

    aget v9, v21, v2

    const/4 v11, 0x2

    aget v2, v21, v11

    if-eq v9, v2, :cond_a

    const/4 v2, 0x1

    aget v9, v21, v2

    const/4 v12, 0x3

    aget v2, v21, v12

    if-ne v9, v2, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-direct {v10, v5, v6, v7}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getScale(IILandroid/graphics/Rect;)[F

    move-result-object v27

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "plane0 stride = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", plane1 stride = "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    if-nez v12, :cond_5

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitmap is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_5
    iget v2, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    iget v3, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v22, v27

    move-object/from16 v23, v7

    move/from16 v24, v6

    move/from16 v25, v5

    move-object/from16 v26, v12

    invoke-static/range {v19 .. v26}, Lcom/android/camera/Util;->getAIWatermarkRange(II[I[FLandroid/graphics/Rect;IILandroid/graphics/Bitmap;)[I

    move-result-object v19

    const/4 v2, 0x0

    aget v3, v19, v2

    if-ltz v3, :cond_9

    const/4 v2, 0x1

    aget v3, v19, v2

    if-gez v3, :cond_6

    goto/16 :goto_2

    :cond_6
    aget v3, v19, v11

    if-gt v3, v13, :cond_8

    const/4 v3, 0x3

    aget v4, v19, v3

    if-le v4, v14, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v3, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-static {v3}, Lcom/xiaomi/camera/base/ImageUtil;->getYuvData(Landroid/media/Image;)[B

    move-result-object v3

    move-object v4, v3

    move v5, v13

    move v6, v14

    move/from16 v7, v17

    move/from16 v8, v18

    move-object/from16 v9, v19

    invoke-static/range {v4 .. v9}, Lcom/android/camera/Util;->getSubYuvImage([BIIII[I)Lcom/android/camera/effect/MiYuvImage;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get sub range data spend total tome ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v15

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    move-object/from16 v28, v15

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    move-object/from16 v29, v5

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    move-object/from16 v30, v5

    new-instance v5, Landroid/util/Size;

    move-object/from16 v31, v5

    aget v6, v19, v11

    const/4 v7, 0x3

    aget v8, v19, v7

    invoke-direct {v5, v6, v8}, Landroid/util/Size;-><init>(II)V

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    move/from16 v32, v5

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    move/from16 v33, v5

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    move/from16 v34, v5

    iget v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mShootRotation:F

    move/from16 v35, v5

    iget-wide v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDate:J

    move-wide/from16 v36, v5

    iget-boolean v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMirror:Z

    move/from16 v38, v5

    iget-boolean v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    move/from16 v39, v5

    iget-boolean v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mIsHeif:Z

    move/from16 v40, v5

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    move-object/from16 v41, v5

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    move-object/from16 v42, v5

    iget-boolean v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasDualWaterMark:Z

    move/from16 v43, v5

    iget-boolean v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mHasFrontWaterMark:Z

    move/from16 v44, v5

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-object/from16 v45, v5

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-object/from16 v46, v5

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    move-object/from16 v47, v5

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-object/from16 v48, v5

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-object/from16 v49, v0

    invoke-direct/range {v28 .. v49}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;-><init>(Landroid/media/Image;Landroid/util/Size;Landroid/util/Size;IIIFJZZZLjava/lang/String;Ljava/lang/String;ZZLcom/android/camera/effect/renders/DeviceWatermarkParam;Lcom/android/camera/effect/EffectController$EffectRectAttribute;Ljava/util/List;Lcom/android/camera/aiwatermark/data/WatermarkItem;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    iput-object v4, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mYuvImage:Lcom/android/camera/effect/MiYuvImage;

    const/4 v0, 0x0

    invoke-direct {v10, v1, v15, v0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v0, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v4, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    aget v9, v19, v11

    const/4 v0, 0x3

    aget v8, v19, v0

    invoke-direct {v10, v9, v8}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkFrameBuffer(II)V

    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v4, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    invoke-virtual {v1, v15}, Lcom/android/camera/effect/renders/PipeRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, v20, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/camera/effect/renders/PipeRender;->deleteBuffer()V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v13, v14}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    const/4 v0, 0x0

    aget v1, v19, v0

    neg-int v1, v1

    aget v4, v19, v2

    neg-int v4, v4

    add-int/2addr v1, v0

    add-int/2addr v4, v0

    iget v5, v15, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v7, v2

    move v2, v4

    move-object v6, v3

    move v3, v13

    move v4, v14

    move-object/from16 p1, v6

    move-object v6, v12

    move v12, v7

    move-object/from16 v7, v19

    move v11, v8

    move-object/from16 v8, v27

    move v12, v9

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawAIWaterMark(IIIIILandroid/graphics/Bitmap;[I[FZ)V

    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v12, v11}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v10, v0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkWatermarkFrameBuffer(Landroid/util/Size;)V

    iget-object v1, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v2, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    invoke-direct {v10, v3}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/renders/RgbToYuvRender;

    const/4 v4, 0x0

    invoke-direct {v10, v3, v15, v4}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v4, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    iget-object v4, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v4

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v5, v0}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(ILandroid/graphics/Rect;Z)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rgb2YuvTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd05

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-double v2, v12

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-double v3, v11

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    mul-int v4, v2, v3

    const/4 v5, 0x4

    mul-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x1908

    const/16 v33, 0x1401

    move/from16 v30, v2

    move/from16 v31, v3

    move-object/from16 v34, v4

    invoke-static/range {v28 .. v34}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v8, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v8, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v8, v7

    const-string/jumbo v2, "readSize=%dx%d imageSize=%dx%d"

    invoke-static {v6, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    move-object/from16 v12, p1

    move-object v4, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v2

    move-object/from16 v18, v19

    invoke-static/range {v12 .. v18}, Lcom/android/camera/Util;->coverSubYuvImage([BIIII[B[I)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cover sub range data spend total time ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, v4, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    move-object/from16 v4, p1

    invoke-static {v2, v4, v3}, Lcom/xiaomi/camera/base/ImageUtil;->updateYuvImage(Landroid/media/Image;[BZ)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateImageTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    iget-object v0, v10, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apply effect For AIWatermark end"

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "watermark range is too large!"

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_9
    :goto_2
    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "watermark is out of screen!"

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_a
    :goto_3
    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bitmap size is error"

    invoke-static {v2, v1, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private blockSplitApplyEffect(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)[B
    .locals 55

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/16 v1, 0xd33

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v0

    const-string v14, "TOTAL"

    invoke-virtual {v0, v14}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getEffectRender(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/PipeRender;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init render failed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockSplitApplyEffect: mOutputSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", picture size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", preview size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    :cond_1
    move v10, v1

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v0, v0, v7

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/image/MemYuvImage;

    move-result-object v2

    iput v9, v2, Lcom/android/camera/effect/framework/image/MemYuvImage;->mWidth:I

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/image/MemYuvImage;

    move-result-object v2

    iput v8, v2, Lcom/android/camera/effect/framework/image/MemYuvImage;->mHeight:I

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1300(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/image/MemYuvImage;

    move-result-object v2

    iget-object v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/framework/image/MemYuvImage;->parseImage(Landroid/media/Image;)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "plane0 stride = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", plane1 stride = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v11, v15, v12, v6}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1400(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/graphics/Splitter;

    move-result-object v1

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v0

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v7

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$800(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v18

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$900(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v19

    move v2, v9

    move v3, v8

    move/from16 v20, v10

    move v10, v4

    move v4, v0

    move v0, v5

    move v5, v7

    move v7, v6

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/effect/framework/graphics/Splitter;->split(IIIIII)Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->isOutputSquare()Z

    move-result v1

    if-eqz v1, :cond_3

    if-le v9, v8, :cond_2

    sub-int v2, v9, v8

    div-int/2addr v2, v13

    move/from16 v17, v2

    move v5, v8

    move v6, v5

    goto :goto_0

    :cond_2
    sub-int v2, v8, v9

    div-int/2addr v2, v13

    move/from16 v18, v2

    move v5, v9

    move v6, v5

    const/16 v17, 0x0

    goto :goto_1

    :cond_3
    move v5, v8

    move v6, v9

    const/16 v17, 0x0

    :goto_0
    const/16 v18, 0x0

    :goto_1
    iget-boolean v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    const/16 v19, 0x3

    if-eqz v2, :cond_4

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v4

    invoke-static {v3, v12, v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1700(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1502(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    iget-object v2, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v4

    invoke-static {v3, v12, v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1900(Lcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Lcom/android/camera/effect/renders/DeviceWatermarkParam;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1802(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/renders/WaterMark;)Lcom/android/camera/effect/renders/WaterMark;

    iget v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v3

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v4}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v4

    invoke-static {v6, v5, v2, v3, v4}, Lcom/android/camera/Util;->getWatermarkRange(IIILcom/android/camera/effect/renders/WaterMark;Lcom/android/camera/effect/renders/WaterMark;)[I

    move-result-object v2

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "blockSplitApplyEffect: rotation = "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", watermarkRange = "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/graphics/RectF;

    const/4 v13, 0x0

    aget v4, v2, v13

    add-int v4, v4, v17

    int-to-float v4, v4

    const/4 v13, 0x1

    aget v22, v2, v13

    add-int v13, v22, v18

    int-to-float v13, v13

    const/16 v21, 0x0

    aget v22, v2, v21

    const/16 v24, 0x2

    aget v26, v2, v24

    add-int v22, v22, v26

    move/from16 v26, v0

    add-int v0, v22, v17

    int-to-float v0, v0

    const/16 v22, 0x1

    aget v25, v2, v22

    aget v27, v2, v19

    add-int v25, v25, v27

    move/from16 v27, v5

    add-int v5, v25, v18

    int-to-float v5, v5

    invoke-direct {v3, v4, v13, v0, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aget v0, v2, v21

    add-int v0, v0, v17

    aget v4, v2, v22

    add-int v4, v4, v18

    const/4 v5, 0x2

    aget v13, v2, v5

    aget v5, v2, v19

    move/from16 v22, v6

    const/4 v6, 0x4

    invoke-static {v0, v4, v13, v5, v6}, Lcom/android/camera/effect/ShaderNativeUtil;->genWaterMarkRange(IIIII)V

    move-object/from16 v23, v2

    move-object v13, v3

    goto :goto_2

    :cond_4
    move/from16 v26, v0

    move/from16 v27, v5

    move/from16 v22, v6

    const/4 v6, 0x4

    move-object/from16 v13, v16

    move-object/from16 v23, v13

    :goto_2
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-nez v0, :cond_5

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz v0, :cond_6

    :cond_5
    const/16 v28, 0x1

    goto :goto_3

    :cond_6
    const/16 v28, 0x0

    :goto_3
    iget v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    iget v3, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v21, 0x0

    aput-object v1, v6, v21

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v25, 0x1

    aput-object v1, v6, v25

    const-string v1, "[loop%d/%d]begin"

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/camera/effect/framework/graphics/Block;

    iget v1, v6, Lcom/android/camera/effect/framework/graphics/Block;->mWidth:I

    iget v0, v6, Lcom/android/camera/effect/framework/graphics/Block;->mHeight:I

    invoke-virtual {v6, v9, v8}, Lcom/android/camera/effect/framework/graphics/Block;->getOffset(II)[I

    move-result-object v30

    move/from16 v31, v2

    const/16 v21, 0x0

    aget v2, v30, v21

    int-to-float v2, v2

    iput v2, v5, Landroid/graphics/RectF;->left:F

    move/from16 v32, v3

    const/16 v25, 0x1

    aget v3, v30, v25

    int-to-float v3, v3

    iput v3, v5, Landroid/graphics/RectF;->top:F

    aget v33, v30, v21

    move/from16 v34, v4

    add-int v4, v33, v1

    int-to-float v4, v4

    iput v4, v5, Landroid/graphics/RectF;->right:F

    aget v4, v30, v25

    add-int/2addr v4, v0

    int-to-float v4, v4

    iput v4, v5, Landroid/graphics/RectF;->bottom:F

    if-eqz v28, :cond_7

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v33

    move-object/from16 v35, v5

    iget v5, v13, Landroid/graphics/RectF;->left:F

    move-object/from16 v36, v6

    iget v6, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v37

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v38

    move-object/from16 v39, v14

    move/from16 v14, v26

    move-object/from16 v26, v13

    move v13, v0

    move-object/from16 v0, p0

    move v12, v1

    move v1, v2

    move v2, v3

    move/from16 v40, v32

    move v3, v4

    move/from16 v41, v34

    move/from16 v4, v33

    move/from16 v43, v27

    move-object/from16 v42, v35

    move/from16 v44, v22

    move/from16 v22, v9

    move-object/from16 v9, v36

    move-object/from16 v27, v7

    move/from16 v7, v37

    move v9, v8

    move/from16 v8, v38

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->rectangle_collision(FFFFFFFF)Z

    move-result v0

    if-nez v0, :cond_8

    move-object/from16 v12, p1

    move/from16 v35, v9

    move/from16 v36, v14

    move/from16 v14, v20

    move/from16 v34, v22

    move-object/from16 v9, v42

    move/from16 v33, v43

    move/from16 v43, v44

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x1

    move/from16 v20, v10

    move-object/from16 v10, v26

    goto/16 :goto_6

    :cond_7
    move v12, v1

    move-object/from16 v42, v5

    move-object/from16 v36, v6

    move-object/from16 v39, v14

    move/from16 v44, v22

    move/from16 v14, v26

    move/from16 v43, v27

    move/from16 v40, v32

    move/from16 v41, v34

    move-object/from16 v27, v7

    move/from16 v22, v9

    move-object/from16 v26, v13

    move v13, v0

    move v9, v8

    :cond_8
    instance-of v0, v15, Lcom/android/camera/effect/renders/PipeRender;

    if-eqz v0, :cond_9

    invoke-virtual {v15, v12, v13}, Lcom/android/camera/effect/renders/PipeRender;->setFrameBufferSize(II)V

    :cond_9
    invoke-direct {v11, v12, v13}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkFrameBuffer(II)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(III)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v12, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    move/from16 v8, v22

    move-object/from16 v1, v36

    invoke-virtual {v1, v14, v10, v8, v9}, Lcom/android/camera/effect/framework/graphics/Block;->getYUVOffset(IIII)[I

    move-result-object v22

    aget v1, v22, v0

    move v7, v12

    move-object/from16 v12, p1

    iput v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOffsetY:I

    const/4 v1, 0x1

    aget v2, v22, v1

    iput v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOffsetUV:I

    iput v7, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    iput v13, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    invoke-virtual {v15, v12}, Lcom/android/camera/effect/renders/PipeRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "[loop%d/%d]gl drawFrame"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    new-instance v0, Landroid/util/Size;

    move/from16 v5, v43

    move/from16 v6, v44

    invoke-direct {v0, v6, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOriginalSize:Landroid/util/Size;

    iget-boolean v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_c

    new-instance v4, Lcom/android/camera/effect/framework/utils/CounterUtil;

    invoke-direct {v4}, Lcom/android/camera/effect/framework/utils/CounterUtil;-><init>()V

    const-string v3, "drawWaterMark"

    invoke-virtual {v4, v3}, Lcom/android/camera/effect/framework/utils/CounterUtil;->reset(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget v1, v30, v0

    sub-int v29, v17, v1

    const/4 v1, 0x1

    aget v2, v30, v1

    sub-int v32, v18, v2

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mWaterInfos:Ljava/util/List;

    move-object/from16 v33, v3

    aget v3, v30, v0

    neg-int v3, v3

    aget v0, v30, v1

    neg-int v1, v0

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v34

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v35

    iget v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/16 v36, 0x0

    const/16 v37, 0x0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v43, v1

    move-object v1, v2

    move v2, v3

    move-object/from16 v45, v33

    move/from16 v3, v43

    move-object/from16 v46, v4

    move v4, v8

    move/from16 v33, v5

    move v5, v9

    move/from16 v43, v6

    move/from16 v6, v34

    move/from16 v47, v7

    move/from16 v7, v35

    move/from16 v34, v8

    move/from16 v8, v38

    move/from16 v35, v9

    move/from16 v9, v36

    move/from16 v36, v14

    move/from16 v14, v20

    move/from16 v20, v10

    move/from16 v10, v37

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZZ)V

    move-object/from16 v9, v42

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object/from16 v10, v26

    iget v5, v10, Landroid/graphics/RectF;->left:F

    iget v6, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->rectangle_collision(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v1, v9, Landroid/graphics/RectF;->left:F

    iget v2, v9, Landroid/graphics/RectF;->top:F

    iget v3, v9, Landroid/graphics/RectF;->right:F

    iget v4, v9, Landroid/graphics/RectF;->bottom:F

    iget v5, v10, Landroid/graphics/RectF;->left:F

    iget v6, v10, Landroid/graphics/RectF;->top:F

    iget v7, v10, Landroid/graphics/RectF;->right:F

    iget v8, v10, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->getIntersectRect(FFFFFFFF)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    float-to-int v4, v4

    const/4 v5, 0x2

    aget v6, v0, v5

    aget v5, v0, v1

    sub-float/2addr v6, v5

    float-to-int v5, v6

    aget v6, v0, v19

    aget v0, v0, v3

    sub-float/2addr v6, v0

    float-to-int v0, v6

    aget v52, v30, v1

    aget v53, v30, v3

    const/16 v54, 0x4

    move/from16 v48, v2

    move/from16 v49, v4

    move/from16 v50, v5

    move/from16 v51, v0

    invoke-static/range {v48 .. v54}, Lcom/android/camera/effect/ShaderNativeUtil;->mergeWaterMarkRange(IIIIIII)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    iget v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v29

    move/from16 v3, v32

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1500(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setDeviceWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setWatermarkScale(F)V

    :cond_a
    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    iget v4, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v29

    move/from16 v3, v32

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1800(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/WaterMark;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setTimeWaterMark(Lcom/android/camera/effect/renders/WaterMark;)V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->setWatermarkScale(F)V

    :cond_b
    move-object/from16 v1, v45

    move-object/from16 v0, v46

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    new-instance v1, Landroid/util/Size;

    move/from16 v2, v47

    invoke-direct {v1, v2, v13}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v11, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->checkWatermarkFrameBuffer(Landroid/util/Size;)V

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v4, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    sget v3, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    invoke-direct {v11, v3}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/renders/RgbToYuvRender;

    const/4 v4, 0x1

    invoke-direct {v11, v3, v12, v4}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V

    iget-object v5, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    iget-object v5, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v5}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v5

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v6, v1}, Lcom/android/camera/dualvideo/render/RectUtil;->create(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v5, v1, v4}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(ILandroid/graphics/Rect;Z)V

    const-string v1, "drawWaterMark rgb2yuv"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move/from16 v33, v5

    move/from16 v43, v6

    move v2, v7

    move/from16 v34, v8

    move/from16 v35, v9

    move/from16 v36, v14

    move/from16 v14, v20

    move-object/from16 v9, v42

    const/4 v4, 0x1

    move/from16 v20, v10

    move-object/from16 v10, v26

    :goto_5
    const/16 v0, 0xd05

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/4 v0, 0x0

    aget v1, v22, v0

    aget v3, v22, v4

    invoke-static {v2, v13, v1, v3}, Lcom/android/camera/effect/ShaderNativeUtil;->mergeYUV(IIII)V

    iget-object v1, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->endBindFrameBuffer()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "[loop%d/%d]gl mergeYUV"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v1, v31, 0x1

    move v2, v1

    move-object v5, v9

    move-object v13, v10

    move/from16 v10, v20

    move-object/from16 v7, v27

    move/from16 v27, v33

    move/from16 v9, v34

    move/from16 v8, v35

    move/from16 v26, v36

    move/from16 v3, v40

    move/from16 v4, v41

    move/from16 v22, v43

    const/4 v6, 0x4

    move/from16 v20, v14

    move-object/from16 v14, v39

    goto/16 :goto_4

    :cond_d
    move/from16 v40, v3

    move v1, v4

    move-object/from16 v39, v14

    iput v1, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockWidth:I

    move/from16 v0, v40

    iput v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mBlockHeight:I

    invoke-virtual {v15}, Lcom/android/camera/effect/renders/PipeRender;->deleteBuffer()V

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iget-boolean v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-eqz v0, :cond_e

    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2100(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderNativeUtil;->getWaterMarkRange(II)[B

    move-result-object v6

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOutputSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->reverseCalculateRange(IIII[I)[I

    move-result-object v0

    iput-object v6, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iput-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    :cond_e
    iget-object v0, v11, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1200(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/utils/CounterUtil;

    move-result-object v0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/utils/CounterUtil;->tick(Ljava/lang/String;)V

    return-object v16
.end method

.method private checkFrameBuffer(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_1

    :cond_0
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_1
    return-void
.end method

.method private checkWatermarkFrameBuffer(Landroid/util/Size;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_1
    return-void
.end method

.method private drawAgeGenderAndMagicMirrorWater(Ljava/util/List;IIIIIIIZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/watermark/WaterMarkData;",
            ">;IIIIIIIZZ)V"
        }
    .end annotation

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OooOOOo()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p9, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    move-object v1, p1

    invoke-direct {v0, p1}, Lcom/android/camera/watermark/WaterMarkBitmap;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->getWaterMarkData()Lcom/android/camera/watermark/WaterMarkData;

    move-result-object v1

    if-eqz v1, :cond_1

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

    invoke-virtual {v1}, Lcom/android/camera/watermark/WaterMarkData;->getOrientation()I

    move-result v1

    sub-int v1, p8, v1

    move-object/from16 p4, p0

    move-object/from16 p5, v11

    move/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, v1

    move/from16 p9, p10

    invoke-direct/range {p4 .. p9}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/watermark/WaterMarkBitmap;->releaseBitmap()V

    const-class v0, Lcom/android/camera/watermark/WaterMarkBitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Draw age_gender_and_magic_mirror water mark"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private drawImage(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)Z
    .locals 5

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    const/16 v4, 0xb

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-nez v3, :cond_2

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_2
    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getType()I

    move-result v3

    if-ne v3, v4, :cond_3

    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    iput-boolean v2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iget-object v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v3, :cond_5

    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->applyEffectForAIWatermark(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)[B

    :cond_5
    :goto_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v3, v4, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAgeGenderAndMagicMirrorWaterOpen()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTiltShiftOn()Z

    move-result v3

    if-nez v3, :cond_6

    if-nez p2, :cond_6

    iget-boolean p2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-nez p2, :cond_7

    iget-object p2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTimeWatermark:Ljava/lang/String;

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->blockSplitApplyEffect(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)[B

    move-result-object p2

    goto :goto_6

    :cond_7
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->applyEffect(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)[B

    move-result-object p2

    :goto_6
    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMajorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, v2}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->applyEffectForAIWatermark(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)[B

    move-result-object p2

    :cond_8
    iget-object v0, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMinorAIWatermarkItem:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->applyEffectForAIWatermark(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)[B

    move-result-object p2

    :cond_9
    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mainLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_a

    const-string/jumbo p2, "null"

    goto :goto_7

    :cond_a
    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_7
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1600(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/renders/DeviceWatermarkParam;->isCinematicAspectRatio()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mImage:Landroid/media/Image;

    invoke-static {p1}, Lcom/android/camera/Util;->drawMiMovieBlackBridge(Landroid/media/Image;)V

    :cond_b
    return v1
.end method

.method private drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    add-int/lit16 p5, p4, 0x168

    rem-int/lit16 p5, p5, 0x168

    iget v2, p1, Lcom/android/camera/effect/renders/WaterMark;->mPictureWidth:I

    const/16 v3, 0x5a

    const/high16 v4, 0x43340000    # 180.0f

    if-eq p5, v3, :cond_1

    const/16 v3, 0x10e

    if-ne p5, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    invoke-virtual {p5, v3, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    invoke-virtual {p5, v4, v1, v0, v1}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p5, v2, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    iget p5, p1, Lcom/android/camera/effect/renders/WaterMark;->mPictureHeight:I

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    div-int/lit8 v3, p5, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2, v4, v0, v1, v1}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    neg-int p5, p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p5, p3

    int-to-float p5, p5

    invoke-virtual {v2, v1, p5}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {p5, v2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    iget-object p5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p5

    neg-int p4, p4

    int-to-float p4, p4

    invoke-virtual {p5, p4, v1, v1, v0}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    iget-object p4, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p4

    neg-int p5, p2

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterX()I

    move-result v0

    sub-int/2addr p5, v0

    int-to-float p5, p5

    neg-int v0, p3

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getCenterY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p4, p5, v0}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    :cond_3
    iget-object p4, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p4}, Lcom/android/camera/effect/SnapshotCanvas;->getBasicRender()Lcom/android/camera/effect/renders/BasicRender;

    move-result-object p4

    new-instance p5, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTexture()Lcom/android/gallery3d/ui/BasicTexture;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getLeft()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getTop()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/effect/renders/WaterMark;->getHeight()I

    move-result p1

    invoke-static {p2, p3, v1, p1}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p5, v0, p1}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-virtual {p4, p5}, Lcom/android/camera/effect/renders/BasicRender;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    return-void
.end method

.method private fetchRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->prepareEffectRenders(ZI)V

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getEffectRender(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/PipeRender;
    .locals 7

    new-instance v0, Lcom/android/camera/effect/renders/PipeRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV2RGB:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    sget v2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v1, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v3

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v3

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2200(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->removeRender(I)V

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

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

    :cond_0
    iget v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mEffectIndex:I

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2202(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    :cond_1
    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const-string v3, "circle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_GAUSSIAN:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mTiltShiftMode:Ljava/lang/String;

    const-string/jumbo v3, "parallel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_TILTSHIFT:I

    invoke-direct {p0, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_4
    iget-boolean p1, p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mApplyWaterMark:Z

    if-nez p1, :cond_5

    sget p1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_RGB2YUV:I

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    :cond_5
    return-object v0
.end method

.method private getEffectRenderForAI(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;)Lcom/android/camera/effect/renders/PipeRender;
    .locals 1

    new-instance p1, Lcom/android/camera/effect/renders/PipeRender;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {p1, v0}, Lcom/android/camera/effect/renders/PipeRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_YUV2RGB:I

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->fetchRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    return-object p1
.end method

.method private getGPUYYY(IIII)Landroid/graphics/Bitmap;
    .locals 11

    shr-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, p4, 0x1

    mul-int v0, v2, v2

    mul-int/lit8 v0, v0, 0x4

    new-array v7, v0, [B

    mul-int v8, p3, p4

    new-array v9, v8, [I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p1, v10

    :goto_0
    if-ge v10, v8, :cond_0

    aget-byte p2, v7, v10

    shl-int/lit8 v0, p2, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    and-int/lit16 p2, p2, 0xff

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    or-int/2addr p2, v0

    aput p2, v9, p1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
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

.method private getLocation(Landroid/graphics/Rect;Lcom/android/camera/aiwatermark/data/WatermarkItem;)[I
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {p2}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getCaptureCoordinate()[I

    move-result-object p2

    const/4 v1, 0x0

    aget v2, p2, v1

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p2, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, p2, v1

    sub-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    aget p2, p2, v1

    sub-int/2addr p2, p1

    aput p2, v0, v1

    return-object v0
.end method

.method private getScale(IILandroid/graphics/Rect;)[F
    .locals 2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p2, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 p2, 0x1

    aput p1, p3, p2

    return-object p3
.end method

.method private initEGL(Landroid/opengl/EGLContext;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/EglCore;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    new-instance v1, Lcom/android/camera/effect/framework/gles/EglCore;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/camera/effect/framework/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    invoke-static {v0, v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1002(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/framework/gles/EglCore;)Lcom/android/camera/effect/framework/gles/EglCore;

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;->release()V

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    :cond_1
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    new-instance p2, Lcom/android/camera/effect/framework/gles/PbufferSurface;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1000(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/EglCore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v1}, Lcom/android/camera/effect/framework/gles/PbufferSurface;-><init>(Lcom/android/camera/effect/framework/gles/EglCore;II)V

    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1102(Lcom/android/camera/effect/renders/SnapshotRender;Lcom/android/camera/effect/framework/gles/PbufferSurface;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

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

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->release()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->release()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mWatermarkFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeCurrent()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$1100(Lcom/android/camera/effect/renders/SnapshotRender;)Lcom/android/camera/effect/framework/gles/PbufferSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/EglSurfaceBase;->makeNothingCurrent()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->deleteProgram()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$2300(Lcom/android/camera/effect/renders/SnapshotRender;)V

    return-void
.end method

.method private removeRender(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/camera/effect/SnapshotCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->removeRender(I)V

    return-void
.end method

.method private reverseCalculateRange(IIII[I)[I
    .locals 3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0OO;->OoooOOO()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_1

    :cond_0
    return-object p5

    :cond_1
    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p4

    int-to-float v2, p2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    if-eq p3, p4, :cond_2

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "origin w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " origin h:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " image w:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " image h:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in different ratio"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/4 p2, 0x0

    aget p3, p5, p2

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    aput p3, p1, p2

    const/4 p2, 0x1

    aget p3, p5, p2

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    aput p3, p1, p2

    const/4 p2, 0x2

    aget p3, p5, p2

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    aput p3, p1, p2

    const/4 p2, 0x3

    aget p3, p5, p2

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    aput p3, p1, p2

    return-object p1
.end method

.method private updateRenderParameters(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result p3

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    iget-object v0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    :goto_0
    iget-object p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    iget-object v0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    iget-object p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    invoke-virtual {p1, p3}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    iget-boolean p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mMirror:Z

    invoke-virtual {p1, p3}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    iget-object p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    iget-object v0, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Lcom/android/camera/effect/renders/Render;->setSnapshotSize(II)V

    iget p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mOrientation:I

    invoke-virtual {p1, p3}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    iget p3, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mShootRotation:F

    invoke-virtual {p1, p3}, Lcom/android/camera/effect/renders/Render;->setShootRotation(F)V

    iget p2, p2, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mJpegRotation:I

    invoke-virtual {p1, p2}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    return-void
.end method


# virtual methods
.method public drawAIWaterMark(IIIIILandroid/graphics/Bitmap;[I[FZ)V
    .locals 8

    if-eqz p6, :cond_0

    new-instance v7, Lcom/android/camera/effect/renders/AIImageWaterMark;

    move-object v0, v7

    move-object v1, p6

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/renders/AIImageWaterMark;-><init>(Landroid/graphics/Bitmap;III[I[F)V

    move-object v0, p0

    move-object v1, v7

    move v2, p1

    move v3, p2

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawWaterMark(Lcom/android/camera/effect/renders/WaterMark;IIIZ)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->prepareEffectRenders(ZI)V

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->release()V

    goto/16 :goto_2

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;

    iget-object v0, p1, Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;->mAttribute:Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    iget-object p1, p1, Lcom/xiaomi/camera/core/FilterProcessor$YuvAttributeWrapper;->mBlocker:Landroid/os/ConditionVariable;

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/ui/BaseGLCanvas;->setSize(II)V

    iget-object v4, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$500(Lcom/android/camera/effect/renders/SnapshotRender;II)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    iget-object v6, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$602(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v5

    const/16 v6, 0xd33

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    move v6, v1

    :goto_0
    iget-object v7, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v7}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v7

    invoke-virtual {v5, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    if-le v7, v8, :cond_4

    iget-object v6, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v6}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v7

    div-int/2addr v7, v3

    invoke-static {v6, v7}, Lcom/android/camera/effect/renders/SnapshotRender;->access$602(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    div-int/lit8 v4, v4, 0x2

    move v6, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    iget-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v2, v4

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$702(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$600(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$802(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$902(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v3}, Lcom/android/camera/effect/renders/SnapshotRender;->access$700(Lcom/android/camera/effect/renders/SnapshotRender;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/camera/effect/renders/SnapshotRender;->access$702(Lcom/android/camera/effect/renders/SnapshotRender;I)I

    :cond_5
    invoke-direct {p0, v0, v6}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawImage(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)Z

    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_2

    :cond_6
    :goto_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget-object v0, v0, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    const-string/jumbo v0, "yuv image is broken width %d height %d"

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/effect/renders/SnapshotRender;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_2

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->drawImage(Lcom/android/camera/effect/draw_mode/DrawYuvAttribute;Z)Z

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BaseGLCanvas;->recycledResources()V

    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$100(Lcom/android/camera/effect/renders/SnapshotRender;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->release()V

    :cond_8
    iget-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotRender;->access$200(Lcom/android/camera/effect/renders/SnapshotRender;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->this$0:Lcom/android/camera/effect/renders/SnapshotRender;

    invoke-static {v0}, Lcom/android/camera/effect/renders/SnapshotRender;->access$310(Lcom/android/camera/effect/renders/SnapshotRender;)I

    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_9
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->initEGL(Landroid/opengl/EGLContext;Z)V

    new-instance p1, Lcom/android/camera/effect/SnapshotCanvas;

    invoke-direct {p1}, Lcom/android/camera/effect/SnapshotCanvas;-><init>()V

    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotRender$EGLHandler;->mGLCanvas:Lcom/android/camera/effect/SnapshotCanvas;

    :cond_a
    :goto_2
    return-void
.end method
