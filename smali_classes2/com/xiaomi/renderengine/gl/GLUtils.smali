.class public Lcom/xiaomi/renderengine/gl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# static fields
.field public static final FILTER_R0_MAT_2X2:[F

.field public static final FILTER_R180_MAT_2X2:[F

.field public static final FILTER_R270_MAT_2X2:[F

.field public static final FILTER_R90_MAT_2X2:[F

.field public static final FILTER_ROTATE_MAT_2X2:[[F

.field public static final FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER:[Ljava/nio/FloatBuffer;

.field public static final FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_0:Ljava/nio/FloatBuffer;

.field public static final FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_180:Ljava/nio/FloatBuffer;

.field public static final FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_270:Ljava/nio/FloatBuffer;

.field public static final FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_90:Ljava/nio/FloatBuffer;

.field public static final IDENTITY_MAT_2X2:[F

.field public static final IDENTITY_MAT_4X4:[F

.field public static final IDENTITY_MAT_UPSIDE_DOWN_2X2:[F

.field public static final REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER:[Ljava/nio/FloatBuffer;

.field public static final REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_0:Ljava/nio/FloatBuffer;

.field public static final REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_180:Ljava/nio/FloatBuffer;

.field public static final REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_270:Ljava/nio/FloatBuffer;

.field public static final REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_90:Ljava/nio/FloatBuffer;

.field public static final RECTANGLE_2D_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

.field public static final RECTANGLE_2D_TEXTURE_MIRROR_X_BUFFER:Ljava/nio/FloatBuffer;

.field public static final RECTANGLE_2D_TEXTURE_MIRROR_X_Y_BUFFER:Ljava/nio/FloatBuffer;

.field public static final RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER:Ljava/nio/FloatBuffer;

.field public static final RECTANGLE_VERTEX_BUFFER:Ljava/nio/FloatBuffer;

.field public static final TEX_MAT_R0_4X4:[F

.field public static final TEX_MAT_R180_4X4:[F

.field public static final TEX_MAT_R270_4X4:[F

.field public static final TEX_MAT_R90_4X4:[F

.field public static final TEX_MAT_ROTATE_4X4:[[F

.field public static final TEX_MAT_ROTATE_4X4_F:[[F

.field public static final Y_MIRROR_R0_MAT_2X2:[F

.field public static final Y_MIRROR_R0_MAT_2X2_F:[F

.field public static final Y_MIRROR_R180_MAT_2X2:[F

.field public static final Y_MIRROR_R180_MAT_2X2_F:[F

.field public static final Y_MIRROR_R270_MAT_2X2:[F

.field public static final Y_MIRROR_R270_MAT_2X2_F:[F

.field public static final Y_MIRROR_R90_MAT_2X2:[F

.field public static final Y_MIRROR_R90_MAT_2X2_F:[F

.field public static final Y_MIRROR_ROTATE_MAT_2X2:[[F

.field public static final Y_MIRROR_ROTATE_MAT_2X2_F:[[F


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->RECTANGLE_VERTEX_BUFFER:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->RECTANGLE_2D_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_2

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_3

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->RECTANGLE_2D_TEXTURE_MIRROR_X_BUFFER:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 5
    fill-array-data v1, :array_4

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->RECTANGLE_2D_TEXTURE_MIRROR_X_Y_BUFFER:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_5

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_0:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_6

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_90:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 8
    fill-array-data v1, :array_7

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_180:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 9
    fill-array-data v1, :array_8

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_270:Ljava/nio/FloatBuffer;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/nio/FloatBuffer;

    .line 10
    sget-object v4, Lcom/xiaomi/renderengine/gl/GLUtils;->FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_0:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/xiaomi/renderengine/gl/GLUtils;->FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_90:Ljava/nio/FloatBuffer;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/xiaomi/renderengine/gl/GLUtils;->FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_180:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v4, 0x3

    aput-object v1, v3, v4

    sput-object v3, Lcom/xiaomi/renderengine/gl/GLUtils;->FRONT_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER:[Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 11
    fill-array-data v1, :array_9

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_0:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 12
    fill-array-data v1, :array_a

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_90:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 13
    fill-array-data v1, :array_b

    invoke-static {v1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_180:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 14
    fill-array-data v0, :array_c

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/renderengine/gl/GLUtils;->REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_270:Ljava/nio/FloatBuffer;

    new-array v1, v2, [Ljava/nio/FloatBuffer;

    .line 15
    sget-object v3, Lcom/xiaomi/renderengine/gl/GLUtils;->REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_0:Ljava/nio/FloatBuffer;

    aput-object v3, v1, v5

    sget-object v3, Lcom/xiaomi/renderengine/gl/GLUtils;->REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_90:Ljava/nio/FloatBuffer;

    aput-object v3, v1, v6

    sget-object v3, Lcom/xiaomi/renderengine/gl/GLUtils;->REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER_180:Ljava/nio/FloatBuffer;

    aput-object v3, v1, v7

    aput-object v0, v1, v4

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->REAR_RECTANGLE_2D_TEXTURE_MIRROR_Y_BUFFER:[Ljava/nio/FloatBuffer;

    new-array v0, v2, [F

    .line 16
    fill-array-data v0, :array_d

    sput-object v0, Lcom/xiaomi/renderengine/gl/GLUtils;->IDENTITY_MAT_2X2:[F

    new-array v0, v2, [F

    .line 17
    fill-array-data v0, :array_e

    sput-object v0, Lcom/xiaomi/renderengine/gl/GLUtils;->IDENTITY_MAT_UPSIDE_DOWN_2X2:[F

    new-array v0, v2, [F

    .line 18
    fill-array-data v0, :array_f

    sput-object v0, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_R0_MAT_2X2:[F

    new-array v1, v2, [F

    .line 19
    fill-array-data v1, :array_10

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_R90_MAT_2X2:[F

    new-array v3, v2, [F

    .line 20
    fill-array-data v3, :array_11

    sput-object v3, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_R180_MAT_2X2:[F

    new-array v8, v2, [F

    .line 21
    fill-array-data v8, :array_12

    sput-object v8, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_R270_MAT_2X2:[F

    new-array v9, v2, [F

    .line 22
    fill-array-data v9, :array_13

    sput-object v9, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_R0_MAT_2X2_F:[F

    new-array v10, v2, [F

    .line 23
    fill-array-data v10, :array_14

    sput-object v10, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_R90_MAT_2X2_F:[F

    new-array v11, v2, [F

    .line 24
    fill-array-data v11, :array_15

    sput-object v11, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_R180_MAT_2X2_F:[F

    new-array v12, v2, [F

    .line 25
    fill-array-data v12, :array_16

    sput-object v12, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_R270_MAT_2X2_F:[F

    new-array v13, v2, [[F

    aput-object v0, v13, v5

    aput-object v1, v13, v6

    aput-object v3, v13, v7

    aput-object v8, v13, v4

    .line 26
    sput-object v13, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_ROTATE_MAT_2X2:[[F

    new-array v0, v2, [[F

    aput-object v9, v0, v5

    aput-object v10, v0, v6

    aput-object v11, v0, v7

    aput-object v12, v0, v4

    .line 27
    sput-object v0, Lcom/xiaomi/renderengine/gl/GLUtils;->Y_MIRROR_ROTATE_MAT_2X2_F:[[F

    new-array v0, v2, [F

    .line 28
    fill-array-data v0, :array_17

    sput-object v0, Lcom/xiaomi/renderengine/gl/GLUtils;->FILTER_R0_MAT_2X2:[F

    new-array v1, v2, [F

    .line 29
    fill-array-data v1, :array_18

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->FILTER_R90_MAT_2X2:[F

    new-array v3, v2, [F

    .line 30
    fill-array-data v3, :array_19

    sput-object v3, Lcom/xiaomi/renderengine/gl/GLUtils;->FILTER_R180_MAT_2X2:[F

    new-array v8, v2, [F

    .line 31
    fill-array-data v8, :array_1a

    sput-object v8, Lcom/xiaomi/renderengine/gl/GLUtils;->FILTER_R270_MAT_2X2:[F

    new-array v9, v2, [[F

    aput-object v0, v9, v5

    aput-object v1, v9, v6

    aput-object v3, v9, v7

    aput-object v8, v9, v4

    .line 32
    sput-object v9, Lcom/xiaomi/renderengine/gl/GLUtils;->FILTER_ROTATE_MAT_2X2:[[F

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 33
    fill-array-data v1, :array_1b

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->IDENTITY_MAT_4X4:[F

    new-array v1, v0, [F

    .line 34
    fill-array-data v1, :array_1c

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->TEX_MAT_R0_4X4:[F

    new-array v1, v0, [F

    .line 35
    fill-array-data v1, :array_1d

    sput-object v1, Lcom/xiaomi/renderengine/gl/GLUtils;->TEX_MAT_R90_4X4:[F

    new-array v3, v0, [F

    .line 36
    fill-array-data v3, :array_1e

    sput-object v3, Lcom/xiaomi/renderengine/gl/GLUtils;->TEX_MAT_R180_4X4:[F

    new-array v0, v0, [F

    .line 37
    fill-array-data v0, :array_1f

    sput-object v0, Lcom/xiaomi/renderengine/gl/GLUtils;->TEX_MAT_R270_4X4:[F

    new-array v3, v2, [[F

    aput-object v1, v3, v5

    aput-object v1, v3, v6

    aput-object v1, v3, v7

    aput-object v1, v3, v4

    .line 38
    sput-object v3, Lcom/xiaomi/renderengine/gl/GLUtils;->TEX_MAT_ROTATE_4X4:[[F

    new-array v2, v2, [[F

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    aput-object v0, v2, v7

    aput-object v1, v2, v4

    .line 39
    sput-object v2, Lcom/xiaomi/renderengine/gl/GLUtils;->TEX_MAT_ROTATE_4X4_F:[[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_10
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_11
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_13
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_14
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_19
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1a
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1d
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1e
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BindFrameBuffers([IIII)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v1, 0xde1

    .line 2
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move v5, p2

    move v6, p3

    .line 3
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 4
    aget p0, p0, v0

    const p2, 0x8d40

    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p0, 0x8ce0

    .line 5
    invoke-static {p2, p0, v1, p1, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 6
    invoke-static {p2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p0

    .line 7
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    const p2, 0x8cd5

    if-eq p0, p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create frame buffers: status = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; error = "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public static createBitmapFromBuffer(Ljava/nio/ByteBuffer;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p1
.end method

.method public static createBitmapFromByteArray([BII)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static createBitmapFromFbo(III)Landroid/graphics/Bitmap;
    .locals 8

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v1, 0x8d40

    .line 5
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p1

    move v4, p2

    move-object v7, v0

    .line 6
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 7
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public static createBitmapFromTexture(III)Landroid/graphics/Bitmap;
    .locals 1

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/renderengine/gl/GLUtils;->readTexture(ILjava/nio/ByteBuffer;II)V

    .line 3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object p0
.end method

.method public static createBufferFromFbo(III)Ljava/nio/ByteBuffer;
    .locals 8

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v1, 0x8d40

    .line 5
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p1

    move v4, p2

    move-object v7, v0

    .line 6
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-object v0
.end method

.method public static createBufferFromFbo(Ljava/nio/ByteBuffer;III)V
    .locals 8

    const v0, 0x8d40

    .line 7
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p2

    move v4, p3

    move-object v7, p0

    .line 8
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public static createExternalOESTextures([I)V
    .locals 3

    const v0, 0x8d65

    const v1, 0x812f

    const/16 v2, 0x2601

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/renderengine/gl/GLUtils;->createTextures([IIII)V

    return-void
.end method

.method public static createFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 6
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createFrameBuffers([I[III)V
    .locals 14

    move-object v0, p0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createTextures2D([I)V

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    move v1, v2

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 4
    aget v3, p1, v1

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/4 v10, 0x0

    const/16 v11, 0x1908

    const/16 v12, 0x1401

    const/4 v13, 0x0

    move/from16 v8, p2

    move/from16 v9, p3

    .line 5
    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 6
    aget v3, v0, v1

    const v5, 0x8d40

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    .line 7
    aget v6, p1, v1

    invoke-static {v5, v3, v4, v6, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 8
    invoke-static {v5}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v3

    .line 9
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v4

    const v5, 0x8cd5

    if-eq v3, v5, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create frame buffers: status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, p0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createShader(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v0, 0x8b30

    .line 2
    :try_start_1
    invoke-static {v0, p1}, Lcom/xiaomi/renderengine/gl/GLUtils;->createShader(ILjava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 4
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 5
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 6
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b82

    .line 7
    invoke-static {v0, v3, v2, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 8
    aget v1, v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 10
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0

    .line 11
    :cond_0
    :try_start_3
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create shader program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move p1, v1

    :goto_0
    move v1, p0

    goto :goto_1

    :catchall_2
    move-exception v0

    move p1, v1

    .line 14
    :goto_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 15
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 16
    throw v0
.end method

.method public static createShader(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    .line 2
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const v1, 0x8b81

    .line 4
    invoke-static {p0, v1, p1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 5
    aget p1, p1, v0

    if-eqz p1, :cond_0

    return p0

    .line 6
    :cond_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create shader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createTextures([IIII)V
    .locals 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 3
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2802

    .line 4
    invoke-static {p1, v2, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 5
    invoke-static {p1, v2, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2801

    .line 6
    invoke-static {p1, v2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 7
    invoke-static {p1, v2, p3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createTextures2D([I)V
    .locals 3

    const/16 v0, 0xde1

    const v1, 0x812f

    const/16 v2, 0x2601

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/renderengine/gl/GLUtils;->createTextures([IIII)V

    return-void
.end method

.method public static createTextures2D([III)V
    .locals 13

    .line 2
    invoke-static {p0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createTextures2D([I)V

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    const/16 v3, 0xde1

    .line 4
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    const/4 v12, 0x0

    move v7, p1

    move v8, p2

    .line 5
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteTextures(I[I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 1
    aget v2, p1, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTextures:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GLUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
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

.method public static loadFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 8
    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "\\r\\n"

    const-string v0, "\n"

    .line 9
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 10
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method public static readPixelsToBuffer(IIILjava/nio/ByteBuffer;)V
    .locals 8

    const v0, 0x8d40

    .line 1
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p1

    move v4, p2

    move-object v7, p3

    .line 2
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public static readTexture(ILjava/nio/ByteBuffer;II)V
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 2
    aget v3, v1, v2

    const v4, 0x8d40

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    const/16 v5, 0xde1

    move v6, p0

    .line 3
    invoke-static {v4, v3, v5, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    move v8, p2

    move/from16 v9, p3

    move-object v12, p1

    .line 4
    invoke-static/range {v6 .. v12}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 5
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public static readTextureToJPG(III)[B
    .locals 8

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p1

    move v4, p2

    move-object v7, v0

    .line 3
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/renderengine/gl/GLUtils;->readTexture(ILjava/nio/ByteBuffer;II)V

    .line 5
    :goto_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 10
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 11
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "/sdcard/MeituCamera/dump_pic/"

    .line 2
    :cond_1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_hh:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ".jpg"

    if-lez p2, :cond_2

    .line 3
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 8
    :cond_3
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 9
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p0, p2, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 11
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveFboToSdcard(III)V
    .locals 8

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v1, 0x8d40

    .line 3
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p1

    move v4, p2

    move-object v7, v0

    .line 4
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gl_dump_Fbo"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/renderengine/gl/GLUtils;->saveRgbToSdcard(Ljava/nio/Buffer;Ljava/lang/String;II)V

    return-void
.end method

.method public static saveRgbToSdcard(Ljava/nio/Buffer;Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 6
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x64

    invoke-virtual {p1, p0, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 9
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 10
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    .line 12
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :cond_1
    :goto_3
    throw p0
.end method

.method public static saveTextureToSdcard(IIII)V
    .locals 8

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p1

    move v4, p2

    move-object v7, v0

    .line 3
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/renderengine/gl/GLUtils;->readTexture(ILjava/nio/ByteBuffer;II)V

    .line 5
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gl_dump_Texture"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "number="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ".jpg"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lcom/xiaomi/renderengine/gl/GLUtils;->saveRgbToSdcard(Ljava/nio/Buffer;Ljava/lang/String;II)V

    return-void
.end method
