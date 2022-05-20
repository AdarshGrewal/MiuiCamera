.class public Lmiuix/smooth/SmoothPathProvider;
.super Ljava/lang/Object;
.source "SmoothPathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/smooth/SmoothPathProvider$SmoothData;,
        Lmiuix/smooth/SmoothPathProvider$CornerData;
    }
.end annotation


# static fields
.field public static final DEFAULT_KSI:F = 0.46f

.field public static final DEFAULT_SMOOTH:F = 0.8f


# instance fields
.field public mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

.field public mKsi:F

.field public mSmooth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f4ccccd    # 0.8f

    .line 2
    iput v0, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    const v0, 0x3eeb851f    # 0.46f

    .line 3
    iput v0, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    return-void
.end method

.method public static synthetic access$000(FFDF)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->smoothForWidth(FFDF)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$100(FFDF)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->smoothForHeight(FFDF)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1000(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->yForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1100(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->kForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1200(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->mForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1300(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->nForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1400(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->pForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1500(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->xForHeight(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$1600(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->yForHeight(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$200(D)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->thetaForWidth(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$300(D)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->thetaForHeight(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$400(D)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$500(DD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lmiuix/smooth/SmoothPathProvider;->kForWidth(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$600(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->mForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$700(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->nForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$800(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->pForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$900(FD)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/smooth/SmoothPathProvider;->xForWidth(FD)D

    move-result-wide p0

    return-wide p0
.end method

.method private ensureFourCornerData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    .line 7
    :cond_2
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-direct {v1}, Lmiuix/smooth/SmoothPathProvider$CornerData;-><init>()V

    iput-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    :cond_3
    return-void
.end method

.method private isFourCornerDataValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isHeightCollapsed(FFFDF)Z
    .locals 4

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    mul-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p0, p3

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWidthCollapsed(FFFDF)Z
    .locals 4

    float-to-double v0, p0

    add-float/2addr p1, p2

    float-to-double p0, p1

    float-to-double v2, p5

    mul-double/2addr p3, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p3, v2

    mul-double/2addr p0, p3

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static kForHeight(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p2, v0

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    mul-double/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, p2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static kForWidth(DD)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide v0, 0x3fdd70a3e0000000L    # 0.46000000834465027

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p2, v0

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    add-double/2addr p0, v4

    mul-double/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, p2

    div-double/2addr p0, v2

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static mForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static mForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static nForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static nForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static pForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static pForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v2

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static radToAngle(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static smoothForHeight(FFDF)D
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    div-float/2addr p0, p4

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static smoothForWidth(FFDF)D
    .locals 6

    move v0, p0

    move v1, p1

    move v2, p1

    move-wide v3, p2

    move v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    div-float/2addr p0, p4

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static thetaForHeight(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static thetaForWidth(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static xForHeight(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static xForWidth(FD)D
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, p1, v2

    .line 1
    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v2

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static yForHeight(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static yForWidth(DD)D
    .locals 0

    mul-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public buildSmoothData(Landroid/graphics/RectF;F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;FFF)V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 2
    invoke-virtual {p0, p1, v0, p3, p4}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v0}, Lmiuix/smooth/SmoothPathProvider;->buildSmoothData(Landroid/graphics/RectF;[FFF)V

    return-void
.end method

.method public buildSmoothData(Landroid/graphics/RectF;[FFF)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->getKsi()F

    move-result v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->getSmooth()F

    move-result v2

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v9

    .line 8
    new-instance v11, Lmiuix/smooth/SmoothPathProvider$SmoothData;

    float-to-double v12, v2

    move-object v2, v11

    move v3, v8

    move v4, v9

    move-wide v5, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lmiuix/smooth/SmoothPathProvider$SmoothData;-><init>(FFDF)V

    iput-object v11, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    new-array v3, v2, [F

    .line 9
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    move v5, v4

    .line 10
    :goto_0
    array-length v6, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 11
    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 12
    aget v6, v1, v5

    aput v6, v3, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_2
    aget v1, v3, v4

    const/4 v2, 0x1

    .line 14
    aget v5, v3, v2

    const/4 v6, 0x2

    .line 15
    aget v7, v3, v6

    const/4 v11, 0x3

    .line 16
    aget v14, v3, v11

    const/4 v15, 0x4

    .line 17
    aget v16, v3, v15

    const/16 v17, 0x5

    .line 18
    aget v18, v3, v17

    const/16 v19, 0x6

    .line 19
    aget v20, v3, v19

    const/16 v21, 0x7

    .line 20
    aget v22, v3, v21

    add-float v23, v1, v7

    cmpl-float v23, v23, v8

    if-lez v23, :cond_3

    .line 21
    aget v1, v3, v4

    mul-float/2addr v1, v8

    aget v7, v3, v4

    aget v23, v3, v6

    add-float v7, v7, v23

    div-float/2addr v1, v7

    .line 22
    aget v7, v3, v6

    mul-float/2addr v7, v8

    aget v4, v3, v4

    aget v6, v3, v6

    add-float/2addr v4, v6

    div-float/2addr v7, v4

    :cond_3
    move v6, v7

    add-float v4, v14, v18

    cmpl-float v4, v4, v9

    if-lez v4, :cond_4

    .line 23
    aget v4, v3, v11

    mul-float/2addr v4, v9

    aget v7, v3, v11

    aget v14, v3, v17

    add-float/2addr v7, v14

    div-float v14, v4, v7

    .line 24
    aget v4, v3, v17

    mul-float/2addr v4, v9

    aget v7, v3, v11

    aget v11, v3, v17

    add-float/2addr v7, v11

    div-float v18, v4, v7

    :cond_4
    move/from16 v11, v18

    add-float v4, v16, v20

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    .line 25
    aget v4, v3, v15

    mul-float/2addr v4, v8

    aget v7, v3, v15

    aget v16, v3, v19

    add-float v7, v7, v16

    div-float v16, v4, v7

    .line 26
    aget v4, v3, v19

    mul-float/2addr v8, v4

    aget v4, v3, v15

    aget v7, v3, v19

    add-float/2addr v4, v7

    div-float v20, v8, v4

    :cond_5
    move/from16 v15, v16

    move/from16 v8, v20

    add-float v4, v22, v5

    cmpl-float v4, v4, v9

    if-lez v4, :cond_6

    .line 27
    aget v4, v3, v21

    mul-float/2addr v4, v9

    aget v5, v3, v21

    aget v7, v3, v2

    add-float/2addr v5, v7

    div-float v22, v4, v5

    .line 28
    aget v4, v3, v2

    mul-float/2addr v9, v4

    aget v4, v3, v21

    aget v2, v3, v2

    add-float/2addr v4, v2

    div-float v5, v9, v4

    :cond_6
    move/from16 v9, v22

    .line 29
    invoke-direct/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->ensureFourCornerData()V

    .line 30
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/16 v16, 0x0

    move-object v1, v2

    move v2, v3

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v24, v6

    move-wide v6, v12

    move/from16 v25, v8

    move v8, v10

    move/from16 v26, v9

    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 31
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    move/from16 v7, v24

    invoke-static {v7, v14}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x1

    move-wide v6, v12

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 32
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x2

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    .line 33
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    move/from16 v3, v25

    move/from16 v2, v26

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v9, 0x3

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v9}, Lmiuix/smooth/SmoothPathProvider$CornerData;->build(FLandroid/graphics/RectF;FFDFI)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public drawPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    .line 1
    invoke-direct/range {p0 .. p0}, Lmiuix/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v3, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 4
    :cond_0
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    .line 5
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v5, v3

    .line 7
    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 8
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 9
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    const/4 v12, 0x0

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    .line 10
    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    .line 11
    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v13, 0x0

    cmpl-double v1, v1, v13

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x3

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 13
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v2, v15

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v6, v2, v15

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 15
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 18
    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 19
    :cond_1
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v3, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_2

    .line 20
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v4, v1, v12

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 22
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v12

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 23
    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 24
    :cond_2
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_3

    .line 25
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 26
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 27
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 28
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 30
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 31
    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 32
    :cond_3
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    .line 34
    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 35
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 36
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    .line 37
    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    .line 38
    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_4

    .line 39
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 40
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 41
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 42
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 44
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 45
    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 46
    :cond_4
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v3, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_5

    .line 47
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v4, v1, v12

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v12

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 50
    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 51
    :cond_5
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_6

    .line 52
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 53
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 55
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 57
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 58
    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 59
    :cond_6
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-wide v3, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 61
    invoke-static {v3, v4}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 62
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 63
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    .line 64
    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    .line 65
    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_7

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 67
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 68
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 69
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 71
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 72
    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 73
    :cond_7
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v3, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_8

    .line 74
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v4, v1, v12

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v12

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 77
    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 78
    :cond_8
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_9

    .line 79
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 80
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v15, v2, v5

    iget v5, v15, Landroid/graphics/PointF;->y:F

    aget-object v15, v2, v17

    iget v15, v15, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v15

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 82
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 84
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 85
    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 86
    :cond_9
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v5, v3

    .line 88
    invoke-static {v5, v6}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    .line 89
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 90
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iput v3, v11, Landroid/graphics/PointF;->x:F

    .line 91
    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v11, Landroid/graphics/PointF;->y:F

    .line 92
    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_a

    .line 93
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 94
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 95
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v9, v2, v5

    iget v5, v9, Landroid/graphics/PointF;->y:F

    aget-object v9, v2, v17

    iget v9, v9, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v9

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 96
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 99
    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 100
    :cond_a
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v3, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v4, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v4, v4, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v5, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v5

    move/from16 v23, v1

    invoke-static/range {v18 .. v23}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v1

    if-nez v1, :cond_b

    .line 101
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v4, v1, v12

    iget v4, v4, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v12

    iget v5, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v12

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 104
    aget-object v1, v1, v12

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 105
    :cond_b
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v13

    if-eqz v1, :cond_c

    .line 106
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 107
    iget v2, v11, Landroid/graphics/PointF;->x:F

    iget v3, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 108
    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v3, v2, v16

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v2, v16

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x2

    aget-object v6, v2, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v5, v2, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget-object v9, v2, v17

    iget v9, v9, Landroid/graphics/PointF;->x:F

    aget-object v2, v2, v17

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move/from16 v22, v5

    move/from16 v23, v9

    move/from16 v24, v2

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 109
    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    invoke-virtual {v7, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 111
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v1, v1, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v2, v1, v17

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v11, Landroid/graphics/PointF;->x:F

    .line 112
    aget-object v1, v1, v17

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v11, Landroid/graphics/PointF;->y:F

    :cond_c
    return-void
.end method

.method public getKsi()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    return v0
.end method

.method public getSmooth()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    return v0
.end method

.method public getSmoothPath(Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 14

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 3
    invoke-direct {p0}, Lmiuix/smooth/SmoothPathProvider;->isFourCornerDataValid()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v2, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget v1, v1, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    invoke-direct {v0, v7, v7, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v1, v1, v7

    const/4 v8, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    add-double/2addr v4, v2

    .line 7
    invoke-static {v4, v5}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    .line 8
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v0, v8

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 10
    :goto_0
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    const-wide/16 v9, 0x0

    cmpl-double v1, v1, v9

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_3

    .line 11
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v0, v13

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v13

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v0, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 12
    :cond_3
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v6, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v0, v8

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    :cond_4
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v9

    if-eqz v1, :cond_5

    .line 15
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v0, v13

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v13

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v0, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 16
    :cond_5
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v2, 0x4012d97c7f3321d2L    # 4.71238898038469

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v4, v2

    .line 18
    invoke-static {v4, v5}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    .line 19
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 20
    :cond_6
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v9

    if-eqz v1, :cond_7

    .line 21
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v0, v13

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v13

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v0, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 22
    :cond_7
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v6, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_8

    .line 23
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v0, v8

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    :cond_8
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v9

    if-eqz v1, :cond_9

    .line 25
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v0, v13

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v13

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v0, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 26
    :cond_9
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_a

    .line 27
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    iget-wide v2, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForVertical:D

    .line 28
    invoke-static {v2, v3}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    .line 29
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 30
    :cond_a
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v9

    if-eqz v1, :cond_b

    .line 31
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v0, v13

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v13

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v0, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 32
    :cond_b
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->width:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomRight:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v6, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider;->isWidthCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_c

    .line 33
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v0, v8

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    :cond_c
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForHorizontal:D

    cmpl-double v1, v1, v9

    if-eqz v1, :cond_d

    .line 35
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorHorizontal:[Landroid/graphics/PointF;

    aget-object v1, v0, v13

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v13

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v0, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 36
    :cond_d
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_e

    .line 37
    iget-object v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->rect:Landroid/graphics/RectF;

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->thetaForHorizontal:D

    add-double/2addr v4, v2

    .line 38
    invoke-static {v4, v5}, Lmiuix/smooth/SmoothPathProvider;->radToAngle(D)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v2, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v2, v2, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->swapAngle:F

    .line 39
    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 40
    :cond_e
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v9

    if-eqz v1, :cond_f

    .line 41
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v0, v13

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v13

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v0, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 42
    :cond_f
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget v1, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->height:F

    iget-object v2, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->bottomLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v2, v2, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-object v3, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget v3, v3, Lmiuix/smooth/SmoothPathProvider$CornerData;->radius:F

    iget-wide v4, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->smooth:D

    iget v6, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->ksi:F

    invoke-static/range {v1 .. v6}, Lmiuix/smooth/SmoothPathProvider;->isHeightCollapsed(FFFDF)Z

    move-result v0

    if-nez v0, :cond_10

    .line 43
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v0, v8

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    :cond_10
    iget-object v0, p0, Lmiuix/smooth/SmoothPathProvider;->mAllData:Lmiuix/smooth/SmoothPathProvider$SmoothData;

    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$SmoothData;->topLeft:Lmiuix/smooth/SmoothPathProvider$CornerData;

    iget-wide v1, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->smoothForVertical:D

    cmpl-double v1, v1, v9

    if-eqz v1, :cond_11

    .line 45
    iget-object v0, v0, Lmiuix/smooth/SmoothPathProvider$CornerData;->bezierAnchorVertical:[Landroid/graphics/PointF;

    aget-object v1, v0, v13

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aget-object v2, v0, v13

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aget-object v3, v0, v12

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v0, v12

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v0, v11

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v0, v0, v11

    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 46
    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-object p1
.end method

.method public setKsi(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/smooth/SmoothPathProvider;->mKsi:F

    return-void
.end method

.method public setSmooth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/smooth/SmoothPathProvider;->mSmooth:F

    return-void
.end method
