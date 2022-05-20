.class public Lcom/android/camera/effect/framework/graphics/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# instance fields
.field public mBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/effect/framework/graphics/Block;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/framework/graphics/Splitter;->mBlockList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public split(IIIIII)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Ljava/util/List<",
            "Lcom/android/camera/effect/framework/graphics/Block;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/framework/graphics/Splitter;->mBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/framework/graphics/Splitter;->mBlockList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    rem-int v0, p1, p3

    div-int v1, p1, p3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 4
    :goto_0
    rem-int v2, p2, p4

    div-int/2addr p2, p4

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    :goto_1
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, p2, :cond_7

    move v5, v3

    :goto_3
    if-ge v5, v1, :cond_6

    .line 5
    new-instance v6, Lcom/android/camera/effect/framework/graphics/Block;

    invoke-direct {v6}, Lcom/android/camera/effect/framework/graphics/Block;-><init>()V

    .line 6
    iput p1, v6, Lcom/android/camera/effect/framework/graphics/Block;->mRowStride:I

    mul-int v7, v4, p1

    mul-int/2addr v7, p4

    mul-int v8, v5, p3

    add-int/2addr v7, v8

    .line 7
    iput v7, v6, Lcom/android/camera/effect/framework/graphics/Block;->mOffset:I

    .line 8
    iput p5, v6, Lcom/android/camera/effect/framework/graphics/Block;->mAdjWidth:I

    .line 9
    iput p6, v6, Lcom/android/camera/effect/framework/graphics/Block;->mAdjHeight:I

    .line 10
    iput p3, v6, Lcom/android/camera/effect/framework/graphics/Block;->mLogicWidth:I

    .line 11
    iput p4, v6, Lcom/android/camera/effect/framework/graphics/Block;->mLogicHeight:I

    add-int/lit8 v7, v1, -0x1

    if-ne v5, v7, :cond_3

    if-lez v0, :cond_3

    add-int/lit8 v8, p2, -0x1

    if-ne v4, v8, :cond_3

    if-lez v2, :cond_3

    .line 12
    iput v0, v6, Lcom/android/camera/effect/framework/graphics/Block;->mWidth:I

    .line 13
    iput v2, v6, Lcom/android/camera/effect/framework/graphics/Block;->mHeight:I

    .line 14
    iget-object v7, p0, Lcom/android/camera/effect/framework/graphics/Splitter;->mBlockList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    if-ne v5, v7, :cond_4

    if-lez v0, :cond_4

    .line 15
    iput v0, v6, Lcom/android/camera/effect/framework/graphics/Block;->mWidth:I

    .line 16
    iput p4, v6, Lcom/android/camera/effect/framework/graphics/Block;->mHeight:I

    .line 17
    iget-object v7, p0, Lcom/android/camera/effect/framework/graphics/Splitter;->mBlockList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    add-int/lit8 v7, p2, -0x1

    if-ne v4, v7, :cond_5

    if-lez v2, :cond_5

    .line 18
    iput p3, v6, Lcom/android/camera/effect/framework/graphics/Block;->mWidth:I

    .line 19
    iput v2, v6, Lcom/android/camera/effect/framework/graphics/Block;->mHeight:I

    .line 20
    iget-object v7, p0, Lcom/android/camera/effect/framework/graphics/Splitter;->mBlockList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_5
    iput p3, v6, Lcom/android/camera/effect/framework/graphics/Block;->mWidth:I

    .line 22
    iput p4, v6, Lcom/android/camera/effect/framework/graphics/Block;->mHeight:I

    .line 23
    iget-object v7, p0, Lcom/android/camera/effect/framework/graphics/Splitter;->mBlockList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/android/camera/effect/framework/graphics/Splitter;->mBlockList:Ljava/util/List;

    return-object p1
.end method
