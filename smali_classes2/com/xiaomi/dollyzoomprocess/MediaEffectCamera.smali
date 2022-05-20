.class public Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;
.super Ljava/lang/Object;
.source "MediaEffectCamera.java"


# static fields
.field public static final BOX_STATE_NORMAL:I = 0x0

.field public static final BOX_STATE_WARNING_OUT_FRAME:I = 0x1

.field public static final ENCODER_DEVICE_BACKUP:I = 0x2

.field public static final ENCODER_DEVICE_K2:I = 0x1

.field public static final ENCODER_DEVICE_OTHERS:I = 0x0

.field public static final ENCODER_FLAG_H264:I = 0x0

.field public static final ENCODER_FLAG_H265:I = 0x1

.field public static final ENCODER_FLAG_RGB:I = 0x0

.field public static final ENCODER_FLAG_YUV:I = 0x1

.field public static final ENCODER_FLAG_YUV_NV12:I = 0x2

.field public static final ENCODER_FLAG_YUV_NV21:I = 0x3

.field public static final ENC_STATE_FINISHED_FAILED:I = 0x2

.field public static final ENC_STATE_FINISHED_NORMAL:I = 0x1

.field public static final ENC_STATE_RECORDING:I = 0x0

.field public static final FLAG_FILM_SIZE_OFF:I = 0x0

.field public static final FLAG_FILM_SIZE_ON:I = 0x1

.field public static final FLAG_RUN:I = 0x1

.field public static final FLAG_STOP:I = 0x0

.field public static final MOVING_MODE_BACKWARD:I = 0x0

.field public static final MOVING_MODE_FORWARD:I = 0x1

.field public static final PIPE_CFG_HIGH_EFFECT:I = 0x0

.field public static final PIPE_CFG_LOW_EFFECT:I = 0x3

.field public static final RUN_STATE_BAD_ALGO_RESULT:I = 0x4

.field public static final RUN_STATE_EARLY_STOP_BY_ALGO:I = 0x7

.field public static final RUN_STATE_FAILED:I = -0x2

.field public static final RUN_STATE_INITIALIZED:I = 0x1

.field public static final RUN_STATE_MOVE_OUT_FRAME:I = 0x5

.field public static final RUN_STATE_MOVE_OUT_ZOOM:I = 0x6

.field public static final RUN_STATE_NORMAL_END:I = 0x3

.field public static final RUN_STATE_NOT_READY:I = -0x1

.field public static final RUN_STATE_RUNNING:I = 0x2

.field public static final RUN_STATE_WAITING:I = 0x0

.field public static TAG:Ljava/lang/String; = "DollyZoomCamera"


# instance fields
.field public mDollyZoomBlock:J

.field public mRender:J

.field public m_device_type:I

.field public m_flag_encode_type:I

.field public m_flag_film_state:I

.field public m_flag_run_state:I

.field public m_input_h:I

.field public m_input_w:I

.field public m_is_initialized:Z

.field public m_land_ref_b_B:D

.field public m_land_ref_b_L:D

.field public m_land_ref_b_R:D

.field public m_land_ref_b_T:D

.field public m_moving_type:I

.field public m_now_state:I

.field public m_pipeline_cfg:I

.field public m_port_ref_b_B:D

.field public m_port_ref_b_L:D

.field public m_port_ref_b_R:D

.field public m_port_ref_b_T:D

.field public m_ref_box_B:D

.field public m_ref_box_L:D

.field public m_ref_box_R:D

.field public m_ref_box_T:D

.field public m_rotate_angle:I

.field public m_save_video_path:Ljava/lang/String;

.field public m_yuv_data_type:I

.field public m_zoom_rate:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DollyZoom"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/sdcard/default_dz_video.mp4"

    .line 2
    iput-object v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_save_video_path:Ljava/lang/String;

    const/4 v0, -0x2

    .line 3
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_now_state:I

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_yuv_data_type:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_film_state:I

    .line 6
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_run_state:I

    .line 7
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_encode_type:I

    .line 8
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    .line 9
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_pipeline_cfg:I

    .line 10
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_rotate_angle:I

    const/16 v1, 0xf00

    .line 11
    iput v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    const/16 v1, 0x870

    .line 12
    iput v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    .line 13
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_moving_type:I

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_zoom_rate:D

    const-wide v1, 0x3fc3333333333333L    # 0.15

    .line 15
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    .line 16
    iput-wide v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    .line 17
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    const-wide v1, 0x3fe999999999999aL    # 0.8

    .line 18
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    const-wide v1, 0x3fcd70a3d70a3d71L    # 0.23

    .line 19
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_L:D

    const-wide v1, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 20
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_R:D

    const-wide v1, 0x3fc999999999999aL    # 0.2

    .line 21
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_T:D

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    .line 22
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_B:D

    const-wide v1, 0x3fd999999999999aL    # 0.4

    .line 23
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_L:D

    const-wide v1, 0x3fe3333333333333L    # 0.6

    .line 24
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_R:D

    const-wide v1, 0x3fc5c28f5c28f5c3L    # 0.17

    .line 25
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_T:D

    const-wide v1, 0x3febd70a3d70a3d7L    # 0.87

    .line 26
    iput-wide v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_B:D

    .line 27
    iput-boolean v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    .line 28
    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct MediaEffectCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 30
    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    return-void
.end method

.method public static native ConstructRenderAndPipelineJni(IIDDDDIII)J
.end method

.method public static native ConstructRenderJni()J
.end method

.method public static native DestructDollyZoomBlockJni(J)V
.end method

.method public static native DestructRenderJni(J)V
.end method

.method public static native DoSomethingAtStopJni(J)J
.end method

.method public static native GetLastSetOPIsOK(J)Z
.end method

.method public static native GetNowBoxStateJni(J)I
.end method

.method public static native GetNowEncoderStateJni(J)I
.end method

.method public static native GetNowScaleJni(J)D
.end method

.method public static native GetNowStateJni(J)I
.end method

.method public static native InitRenderJni(JIIII)V
.end method

.method public static native PausePipelineJni(J)J
.end method

.method public static native PushExtraYAndUVFrameJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIJI)J
.end method

.method public static native RecoverPipelineJni(J)J
.end method

.method private RefreshReferenceBox()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_rotate_angle:I

    if-eqz v0, :cond_2

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    .line 2
    :cond_1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_L:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    .line 3
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_R:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    .line 4
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_T:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    .line 5
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_port_ref_b_B:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_L:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    .line 7
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_R:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    .line 8
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_T:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    .line 9
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_land_ref_b_B:D

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    :cond_3
    :goto_1
    return-void
.end method

.method public static native RenderFrameJni(J)V
.end method

.method public static native ResetDollyZoomStateJni(J)J
.end method

.method public static native SetDollyZoomMovingStateJni(JID)J
.end method

.method public static native SetDollyZoomOrientationJni(JIDDDD)J
.end method

.method public static native SetDollyZoomOutputConfigJni(JLjava/lang/String;II)J
.end method

.method public static native SetDollyZoomOutputFDJni(JLjava/io/FileDescriptor;)J
.end method


# virtual methods
.method public ConstructMediaEffectCamera(II)V
    .locals 13

    .line 1
    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    .line 2
    iput p2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    .line 3
    iget-boolean p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RefreshReferenceBox()V

    .line 5
    iget v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    iget v1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    iget-wide v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v4, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v6, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v8, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    iget v10, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_yuv_data_type:I

    iget v11, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    iget v12, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_pipeline_cfg:I

    invoke-static/range {v0 .. v12}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructRenderAndPipelineJni(IIDDDDIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 6
    sget-object p1, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "construct mDollyZoomBlock: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    :cond_0
    return-void
.end method

.method public ConstructMediaEffectCamera(III)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    .line 8
    iput v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    move/from16 v1, p2

    .line 9
    iput v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    move/from16 v1, p3

    .line 10
    iput v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    .line 11
    iget-boolean v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-nez v1, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RefreshReferenceBox()V

    .line 13
    iget v2, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    iget v3, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    iget-wide v4, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v6, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v8, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v10, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    iget v12, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_yuv_data_type:I

    iget v13, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    iget v14, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_pipeline_cfg:I

    invoke-static/range {v2 .. v14}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructRenderAndPipelineJni(IIDDDDIII)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 14
    sget-object v1, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "construct mDollyZoomBlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    :cond_0
    return-void
.end method

.method public ConstructMediaEffectCamera(IIII)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    .line 16
    iput v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    move/from16 v1, p2

    .line 17
    iput v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    move/from16 v1, p3

    .line 18
    iput v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    move/from16 v1, p4

    .line 19
    iput v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_pipeline_cfg:I

    .line 20
    iget-boolean v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-nez v1, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RefreshReferenceBox()V

    .line 22
    iget v2, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_w:I

    iget v3, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_input_h:I

    iget-wide v4, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v6, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v8, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v10, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    iget v12, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_yuv_data_type:I

    iget v13, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_device_type:I

    iget v14, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_pipeline_cfg:I

    invoke-static/range {v2 .. v14}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructRenderAndPipelineJni(IIDDDDIII)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 23
    sget-object v1, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "construct mDollyZoomBlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    :cond_0
    return-void
.end method

.method public ConstructRender()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct ConstructRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ConstructRenderJni()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    return-void
.end method

.method public DestructMediaEffectCamera()V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destruct mDollyZoomBlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->DestructDollyZoomBlockJni(J)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    :cond_0
    return-void
.end method

.method public DestructRender()V
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct DestructRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->DestructRenderJni(J)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    return-void
.end method

.method public GetBoxState()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowBoxStateJni(J)I

    move-result v0

    return v0
.end method

.method public GetEncoderState()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowEncoderStateJni(J)I

    move-result v0

    return v0
.end method

.method public GetNowScale()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowScaleJni(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public GetNowState()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetNowStateJni(J)I

    move-result v0

    return v0
.end method

.method public InitRender(IIII)V
    .locals 8

    .line 1
    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    const-string v1, "construct InitRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->InitRenderJni(JIIII)V

    return-void
.end method

.method public PauseRunning()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->PausePipelineJni(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    return-void
.end method

.method public PushExtraYAndUVFrame(Landroid/media/Image;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 3
    iget-boolean v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_is_initialized:Z

    if-eqz v2, :cond_0

    .line 4
    iget-wide v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    aget-object v1, v0, v1

    .line 5
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    .line 6
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    const-wide/32 v9, 0xf4240

    div-long v9, v0, v9

    iget v11, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_run_state:I

    .line 7
    invoke-static/range {v3 .. v11}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->PushExtraYAndUVFrameJni(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIJI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    :cond_0
    return-void
.end method

.method public RecoverRunning()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RecoverPipelineJni(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    return-void
.end method

.method public RenderFrame()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mRender:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RenderFrameJni(J)V

    return-void
.end method

.method public SetEncodeType(I)Z
    .locals 4

    .line 1
    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_encode_type:I

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget-object v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_save_video_path:Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_film_state:I

    invoke-static {v0, v1, v2, p1, v3}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOutputConfigJni(JLjava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetLastSetOPIsOK(J)Z

    move-result p1

    return p1
.end method

.method public SetFilmSizeState(I)Z
    .locals 4

    .line 1
    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_film_state:I

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget-object v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_save_video_path:Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_encode_type:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOutputConfigJni(JLjava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetLastSetOPIsOK(J)Z

    move-result p1

    return p1
.end method

.method public SetMovingMode(I)Z
    .locals 4

    .line 1
    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_moving_type:I

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget-wide v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_zoom_rate:D

    invoke-static {v0, v1, p1, v2, v3}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomMovingStateJni(JID)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetLastSetOPIsOK(J)Z

    move-result p1

    return p1
.end method

.method public SetRotation(I)Z
    .locals 11

    .line 1
    iput p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_rotate_angle:I

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->RefreshReferenceBox()V

    .line 3
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_rotate_angle:I

    iget-wide v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_L:D

    iget-wide v5, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_R:D

    iget-wide v7, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_T:D

    iget-wide v9, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_ref_box_B:D

    invoke-static/range {v0 .. v10}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOrientationJni(JIDDDD)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetLastSetOPIsOK(J)Z

    move-result p1

    return p1
.end method

.method public SetSavePath(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_save_video_path:Ljava/lang/String;

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_encode_type:I

    iget v3, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_film_state:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOutputConfigJni(JLjava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetLastSetOPIsOK(J)Z

    move-result p1

    return p1
.end method

.method public SetSavePathFd(Ljava/io/FileDescriptor;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSavePathFd valid check: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1, p1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomOutputFDJni(JLjava/io/FileDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 3
    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetLastSetOPIsOK(J)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SetSavePathFd argument is null fd! "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SetZoomRate(D)Z
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_zoom_rate:D

    .line 2
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    iget v2, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_moving_type:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->SetDollyZoomMovingStateJni(JID)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    .line 3
    invoke-static {p1, p2}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->GetLastSetOPIsOK(J)Z

    move-result p1

    return p1
.end method

.method public StartRecording()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->ResetDollyZoomStateJni(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_run_state:I

    return-void
.end method

.method public StopRecording()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    invoke-static {v0, v1}, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->DoSomethingAtStopJni(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->mDollyZoomBlock:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/xiaomi/dollyzoomprocess/MediaEffectCamera;->m_flag_run_state:I

    return-void
.end method
