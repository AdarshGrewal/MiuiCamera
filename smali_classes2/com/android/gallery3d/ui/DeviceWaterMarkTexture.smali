.class public Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;
.super Lcom/android/gallery3d/ui/CanvasTexture;
.source "DeviceWaterMarkTexture.java"


# static fields
.field public static final FONT_MIPRO_PATH:Ljava/lang/String;

.field public static final FONT_SANS_SERIF:Ljava/lang/String; = "sans-serif"

.field public static final FONT_SANS_SERIF_MEDIUM:Ljava/lang/String; = "sans-serif-medium"

.field public static final IS_MIPRO_EXISTS:Z

.field public static final LETTER_SPACING:F = 0.09f

.field public static final TAG:Ljava/lang/String; = "DeviceWaterMarkTexture"

.field public static final TEXT_COLOR:I = -0x1

.field public static final TEXT_GAP_VERTICAL:I = 0xc

.field public static final TEXT_GAP_VERTICAL_GLOBAL:I = 0x1c

.field public static final TEXT_SIZE_CUSTOM:I = 0x4a

.field public static final TEXT_SIZE_LOGO:I = 0x4c

.field public static final TEXT_SPLIT_CUSTOM:Ljava/lang/String; = " | "

.field public static final WATER_MARK_CINEMATIC_MAX_LENGTH:I = 0x44c

.field public static final WATER_MARK_MAX_LENGTH:I = 0x578


# instance fields
.field public final mCustom:Ljava/lang/String;

.field public final mCustomPaint:Landroid/graphics/Paint;

.field public final mIsLTR:Z

.field public final mIsOneLine:Z

.field public final mLogo:Ljava/lang/String;

.field public final mLogoPaint:Landroid/graphics/Paint;

.field public final mProduct:Ljava/lang/String;

.field public final mProductPaint:Landroid/graphics/Paint;

.field public final mRatio:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.miui.ui.font.mi_font_path"

    const-string v1, "system/fonts/MiLanProVF.ttf"

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->FONT_MIPRO_PATH:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->FONT_MIPRO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->IS_MIPRO_EXISTS:Z

    return-void
.end method

.method public constructor <init>(IIZZFLjava/lang/String;Landroid/text/TextPaint;Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/String;Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/CanvasTexture;-><init>(II)V

    .line 2
    iput-boolean p3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mIsOneLine:Z

    .line 3
    iput-boolean p4, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mIsLTR:Z

    .line 4
    iput p5, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mRatio:F

    .line 5
    iput-object p6, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    .line 7
    iput-object p8, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProduct:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    .line 9
    iput-object p10, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    .line 10
    iput-object p11, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustomPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public static getLogoTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->IS_MIPRO_EXISTS:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Typeface$Builder;

    sget-object v1, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->FONT_MIPRO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 630"

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "sans-serif-medium"

    .line 5
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static getTextPaint(Landroid/graphics/Typeface;F)Landroid/text/TextPaint;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p1, -0x1

    .line 3
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 v1, -0x80000000

    .line 5
    invoke-virtual {v0, p1, p0, p0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 6
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p0, 0x3db851ec    # 0.09f

    .line 7
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    return-object v0
.end method

.method public static getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->IS_MIPRO_EXISTS:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Typeface$Builder;

    sget-object v1, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->FONT_MIPRO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 305"

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "sans-serif"

    .line 5
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FZZ)Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;
    .locals 17

    move-object/from16 v10, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000Oo()Ljava/lang/String;

    move-result-object v6

    const/high16 v0, 0x42980000    # 76.0f

    mul-float v0, v0, p1

    .line 3
    invoke-static {}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->getLogoTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->getTextPaint(Landroid/graphics/Typeface;F)Landroid/text/TextPaint;

    move-result-object v7

    .line 4
    invoke-virtual {v7}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 5
    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 6
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newInstance: logoSize="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "DeviceWaterMarkTexture"

    invoke-static {v14, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0000OoO()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->getTextPaint(Landroid/graphics/Typeface;F)Landroid/text/TextPaint;

    move-result-object v11

    .line 10
    invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 11
    invoke-virtual {v11, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    move-wide v15, v12

    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v1, v12

    .line 12
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v5, v0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newInstance: productSize = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " | "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v0, v12

    :goto_0
    add-int/2addr v2, v1

    add-int v1, v2, v0

    .line 16
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newInstance: online size = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_1

    int-to-float v0, v1

    const v5, 0x44898000    # 1100.0f

    mul-float v5, v5, p1

    cmpg-float v0, v0, v5

    if-lez v0, :cond_4

    :cond_1
    if-nez p2, :cond_2

    int-to-float v0, v1

    const/high16 v5, 0x44af0000    # 1400.0f

    mul-float v5, v5, p1

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    goto :goto_2

    .line 19
    :cond_2
    invoke-static {}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/high16 v1, 0x42940000    # 74.0f

    mul-float v1, v1, p1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->getTextPaint(Landroid/graphics/Typeface;F)Landroid/text/TextPaint;

    move-result-object v12

    .line 20
    invoke-virtual {v12}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 21
    invoke-virtual {v12, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v1, v9

    .line 22
    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v5, v0

    .line 23
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 24
    sget-boolean v0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->IS_MIPRO_EXISTS:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    goto :goto_1

    :cond_3
    const/16 v0, 0x1c

    :goto_1
    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    add-int/2addr v3, v0

    add-int/2addr v3, v5

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "newInstance: secondLineSize = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v13, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;

    const/4 v4, 0x0

    move-object v0, v13

    move v1, v2

    move v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p1

    move-object v9, v11

    move-object/from16 v10, p0

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;-><init>(IIZZFLjava/lang/String;Landroid/text/TextPaint;Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/String;Landroid/text/TextPaint;)V

    goto :goto_3

    .line 27
    :cond_4
    :goto_2
    new-instance v13, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;

    const/4 v4, 0x1

    move-object v0, v13

    move v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p1

    move-object v9, v11

    move-object/from16 v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;-><init>(IIZZFLjava/lang/String;Landroid/text/TextPaint;Ljava/lang/String;Landroid/text/TextPaint;Ljava/lang/String;Landroid/text/TextPaint;)V

    .line 28
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newInstance: cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw: bitmap size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceWaterMarkTexture"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mIsOneLine:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-boolean p2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mIsLTR:Z

    const-string v0, " | "

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p2, p2

    int-to-float p2, p2

    .line 5
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, p2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 6
    iget-object v1, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProduct:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, p2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 8
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 9
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProduct:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v1, v2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p2, p2

    int-to-float p2, p2

    .line 12
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, p2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 14
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, v1

    .line 15
    iget-object v1, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 16
    iget-object v1, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float v1, v2, v0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    iget-object v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v1, v0

    .line 19
    iget-object v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProduct:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 20
    :cond_2
    sget-boolean v0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->IS_MIPRO_EXISTS:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    goto :goto_0

    :cond_3
    const/16 v0, 0x1c

    .line 21
    :goto_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mIsLTR:Z

    if-eqz v2, :cond_4

    .line 22
    iget-object p2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p2, p2

    int-to-float p2, p2

    .line 23
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, p2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 24
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 25
    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProduct:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, p2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 26
    iget-object p2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, v2

    int-to-float p2, p2

    int-to-float v0, v0

    iget v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mRatio:F

    mul-float/2addr v0, v2

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 28
    iget-object v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustomPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProduct:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 30
    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v2, v2

    int-to-float v2, v2

    .line 31
    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 32
    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v1, v3

    .line 33
    iget-object v3, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProduct:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 34
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustomPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr p2, v1

    .line 35
    iget-object v1, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mLogoPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mRatio:F

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mProductPaint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 37
    iget-object v0, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustom:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery3d/ui/DeviceWaterMarkTexture;->mCustomPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method
