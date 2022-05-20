.class public Lcom/android/camera/effect/renders/CustomTextWaterMark;
.super Ljava/lang/Object;
.source "CustomTextWaterMark.java"


# static fields
.field public static final BACK_TEXT_START_MARGIN:I = 0x40

.field public static final BACK_WATER_MARK_HEIGHT:I = 0xc3

.field public static final DEVICE_PREFIX_GEN2:Ljava/lang/String; = "SHOT ON "

.field public static final FONT_MIPRO_MEDIUM:Ljava/lang/String; = "mipro-medium"

.field public static final FONT_NAME:Ljava/lang/String; = "mipro-regular"

.field public static final FONT_SANS_SERIF_LIGHT:Ljava/lang/String; = "sans-serif-light"

.field public static final FRONT_TEXT_START_MARGIN:I = 0x32

.field public static final FRONT_WATER_MARK_HEIGHT:I = 0x78

.field public static final NO_ICON_DESCRIPTION_TEXT_SIZE:I = 0x44

.field public static final NO_ICON_TITLE_TEXT_SIZE:I = 0x76

.field public static final NO_ICON_VERTICAL_MARGIN:I = 0x5

.field public static final SHOT_ON_MAX:I = 0xa

.field public static final SHOT_ON_MIN:I = 0x6

.field public static final TAG:Ljava/lang/String; = "CustomTextWaterMark"

.field public static final TEXT_COLOR:I = -0x1

.field public static final TEXT_SIZE:I = 0x46

.field public static final TEXT_SIZE_GEN2:I = 0x48

.field public static final TEXT_TOP_MARGIN_ROW1_GEN2:I = 0x24

.field public static final TEXT_TOP_MARGIN_ROW2_GEN2:I = 0x12

.field public static final VERTICAL_MARGIN:I = 0x17

.field public static final WATER_MARK_CINEMATIC_MAX_LENGTH:I = 0x44c

.field public static final WATER_MARK_MAX_LENGTH:I = 0x578

.field public static final WATER_MARK_SHADOW_Y:F = 2.0f

.field public static final WATER_MARK_SHADOW_Y_COLOR:I = 0x2e000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawBackWaterMark(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->drawBackWaterMarkGen2(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 3
    invoke-static {p1, p2}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->drawNoIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->drawWithIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawBackWaterMarkGen2(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "drawBackWaterMarkGen2: icon size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "CustomTextWaterMark"

    invoke-static {v9, v7}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const-string v12, "SHOT ON "

    const/4 v13, 0x6

    if-gt v7, v13, :cond_0

    .line 6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v13, 0xa

    if-ge v7, v13, :cond_2

    .line 8
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v7, 0x0

    :goto_1
    const/high16 v13, 0x42900000    # 72.0f

    .line 10
    invoke-static {v13}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->getTextPaintGen2(F)Landroid/text/TextPaint;

    move-result-object v13

    .line 11
    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 12
    invoke-virtual {v13, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-double v10, v15

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 13
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v14, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v11, v14

    .line 14
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "drawBackWaterMarkGen2: deviceNameSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v14, " | "

    if-eqz v11, :cond_3

    move-wide v15, v3

    const/4 v3, 0x0

    goto :goto_2

    .line 16
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    move-wide v15, v3

    float-to-double v3, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 17
    :goto_2
    invoke-virtual {v13}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    add-int/2addr v3, v10

    .line 18
    iget v11, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-wide/from16 v17, v15

    iget v15, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v11, v15

    .line 19
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v14

    const-string v14, "drawBackWaterMarkGen2: size = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v15}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    move-object/from16 v16, v14

    if-nez v15, :cond_7

    if-eqz p3, :cond_4

    const/16 v15, 0x44c

    if-le v3, v15, :cond_7

    :cond_4
    if-nez p3, :cond_5

    const/16 v15, 0x578

    if-gt v3, v15, :cond_5

    goto/16 :goto_3

    .line 21
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawBackWaterMarkGen2: needCheck = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_6

    .line 22
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    :cond_6
    invoke-virtual {v13, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v3, v14

    .line 25
    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v5, v14

    .line 26
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v6, v6, 0x24

    add-int v12, v6, v11

    add-int/lit8 v12, v12, 0x12

    add-int/2addr v11, v12

    .line 27
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v15, 0x1

    .line 28
    invoke-virtual {v14, v15}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 29
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 p1, v14

    const/4 v7, 0x0

    const/4 v14, 0x0

    .line 30
    invoke-virtual {v15, v0, v14, v14, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    iget v0, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v0

    int-to-float v0, v6

    .line 33
    invoke-virtual {v15, v1, v14, v0, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 34
    iget v0, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v12, v0

    int-to-float v0, v12

    .line 35
    invoke-virtual {v15, v2, v14, v0, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawBackWaterMarkGen2: firstLineWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", secondLineWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v14, p1

    goto :goto_4

    .line 37
    :cond_7
    :goto_3
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x24

    add-int/2addr v11, v6

    .line 38
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v11, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v5, 0x1

    .line 39
    invoke-virtual {v14, v5}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 40
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 41
    invoke-virtual {v5, v0, v12, v12, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    iget v0, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v6, v0

    int-to-float v0, v6

    .line 44
    invoke-virtual {v5, v1, v12, v0, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 45
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    int-to-float v1, v10

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v1, v0, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 47
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawBackWaterMarkGen2: cost time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14
.end method

.method public static drawFrontWaterMark(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawFrontWaterMark onDraw: icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CustomTextWaterMark"

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    const v6, 0x3cf5c28f    # 0.03f

    .line 6
    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 7
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, p1, v8, v7, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x32

    .line 9
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v2

    .line 10
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v9, 0x78

    invoke-static {v7, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x1

    .line 11
    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 12
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    rsub-int/lit8 v3, v3, 0x78

    int-to-float v3, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v3, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 13
    invoke-virtual {v8, p0, v11, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 15
    iget p0, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    int-to-float p0, v2

    .line 16
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v9, v2

    int-to-float v2, v9

    div-float/2addr v2, v10

    iget v3, v6, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 17
    invoke-virtual {v8, p1, p0, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawFrontWaterMark: productBounds = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", y = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawFrontWaterMark: Custom watermark cost time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public static drawNoIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    const-string v5, "mipro-regular"

    .line 4
    invoke-static {v5, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 5
    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v6, 0x42ec0000    # 118.0f

    .line 6
    invoke-virtual {v2, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, p0, v7, v6, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 8
    invoke-static {}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v6

    .line 9
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 10
    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 11
    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v5, 0x42880000    # 68.0f

    .line 12
    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v6, p1, v7, v5, v8}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 15
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v9, 0xc3

    invoke-static {v5, v9, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v4}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 17
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 18
    iget v7, v3, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    int-to-float v7, v7

    .line 19
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/lit8 v9, v9, 0x5

    int-to-float v9, v9

    .line 20
    invoke-virtual {v4, p0, v7, v9, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawNoIcon: productBounds = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CustomTextWaterMark"

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget p0, v8, Landroid/graphics/Rect;->left:I

    neg-int p0, p0

    int-to-float p0, p0

    .line 23
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v3

    int-to-float v3, v7

    .line 24
    invoke-virtual {v4, p1, p0, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawNoIcon: customBounds = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawNoIcon: Custom watermark cost time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public static drawWithIcon(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawWithIcon: icon = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CustomTextWaterMark"

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/effect/renders/CustomTextWaterMark;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 6
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7, v6, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 8
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, p2, v7, v8, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x40

    .line 10
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v2

    .line 11
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v9, 0xc3

    invoke-static {v7, v9, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x1

    .line 12
    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 13
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 14
    invoke-virtual {v8, p0, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 15
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    iget p0, v5, Landroid/graphics/Rect;->left:I

    sub-int p0, v2, p0

    int-to-float p0, p0

    .line 17
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/lit8 v9, v9, 0x17

    int-to-float v9, v9

    .line 18
    invoke-virtual {v8, p1, p0, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawWithIcon: productBounds = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget p0, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x2

    int-to-float p0, v2

    .line 21
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x17

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    .line 22
    invoke-virtual {v8, p2, p0, p1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawWithIcon: customBounds = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "drawWithIcon: Custom watermark cost time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public static getTextPaint()Landroid/text/TextPaint;
    .locals 5

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    const/high16 v2, 0x428c0000    # 70.0f

    .line 2
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const/4 v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const-string v1, "mipro-regular"

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x2e000000

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v1, 0x3d75c28f    # 0.06f

    .line 9
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    const v1, 0x3f733333    # 0.95f

    .line 10
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    return-object v0
.end method

.method public static getTextPaintGen2(F)Landroid/text/TextPaint;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, -0x1

    .line 3
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setColor(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "sans-serif-light"

    .line 5
    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const-string v1, "mipro-medium"

    .line 6
    invoke-static {v1, p0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    .line 7
    :goto_0
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 p0, 0x3f800000    # 1.0f

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 9
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p0, 0x3d75c28f    # 0.06f

    .line 10
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    return-object v0
.end method
