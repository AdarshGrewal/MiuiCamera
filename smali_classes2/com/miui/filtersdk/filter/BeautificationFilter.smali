.class public Lcom/miui/filtersdk/filter/BeautificationFilter;
.super Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;
.source "BeautificationFilter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BeautificationFilter"


# instance fields
.field public mBeautyInputHeight:I

.field public mBeautyInputWidth:I

.field public mOutTexture:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 2
    iput-object v0, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mOutTexture:[I

    return-void
.end method

.method private initBeauty()V
    .locals 0

    return-void
.end method


# virtual methods
.method public initBeautyProcessor(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mBeautyInputWidth:I

    .line 3
    iput p2, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mBeautyInputHeight:I

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->init(II)V

    return-void
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/filtersdk/filter/BeautificationFilter;->onDrawToTexture(I)I

    move-result p1

    iput p1, p0, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->mTextureId:I

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p1

    return p1
.end method

.method public onDrawFrame(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public onDrawToTexture(I)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mBeautyInputWidth:I

    iget v1, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mBeautyInputHeight:I

    iget-object v2, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mOutTexture:[I

    const/16 v3, 0xde1

    invoke-static {v0, v1, v2, v3}, Lcom/miui/filtersdk/utils/OpenGlUtils;->initEffectTexture(II[II)I

    .line 2
    iget-object v0, p0, Lcom/miui/filtersdk/filter/base/BaseBeautyFilter;->mBeautyProcessor:Lcom/miui/filtersdk/beauty/BeautyProcessor;

    iget v1, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mBeautyInputWidth:I

    iget v2, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mBeautyInputHeight:I

    iget-object v3, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mOutTexture:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    .line 3
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/miui/filtersdk/beauty/BeautyProcessor;->beautify(IIII)V

    .line 4
    iget-object p1, p0, Lcom/miui/filtersdk/filter/BeautificationFilter;->mOutTexture:[I

    aget p1, p1, v4

    return p1
.end method

.method public onInit()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/filtersdk/filter/base/GPUImageFilter;->onInit()V

    .line 2
    invoke-direct {p0}, Lcom/miui/filtersdk/filter/BeautificationFilter;->initBeauty()V

    return-void
.end method
