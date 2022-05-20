.class public Lcom/android/camera/fragment/ambilight/AmbilightInfo;
.super Ljava/lang/Object;
.source "AmbilightInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/fragment/ambilight/AmbilightInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public mIconResId:I

.field public mIndex:I

.field public mIsNeedRect:Z

.field public mNameResId:I

.field public mOrder:I

.field public mSceneMode:I

.field public tagUniqueFilterId:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIndex:I

    .line 3
    iput p4, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mNameResId:I

    .line 5
    iput p3, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIconResId:I

    .line 6
    iput p5, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mSceneMode:I

    return-void
.end method

.method public static getIndex(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/fragment/ambilight/AmbilightInfo;)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    iget p1, p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->compareTo(Lcom/android/camera/fragment/ambilight/AmbilightInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIndex:I

    check-cast p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;

    iget p1, p1, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIndex:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIconResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIconResId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIndex:I

    return v0
.end method

.method public getNameResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mNameResId:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    return v0
.end method

.method public getSceneMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mSceneMode:I

    return v0
.end method

.method public getTagUniqueFilterId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->tagUniqueFilterId:I

    return v0
.end method

.method public isNeedRect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIsNeedRect:Z

    return v0
.end method

.method public setIconResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIconResId:I

    return-void
.end method

.method public setNameResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mNameResId:I

    return-void
.end method

.method public setNeedRect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mIsNeedRect:Z

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->mOrder:I

    return-void
.end method

.method public setTagUniqueFilterId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/ambilight/AmbilightInfo;->tagUniqueFilterId:I

    return-void
.end method
