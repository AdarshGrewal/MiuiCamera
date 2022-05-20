.class public Lcom/android/camera/effect/renders/CacheKey;
.super Ljava/lang/Object;
.source "CacheKey.java"


# instance fields
.field public final height:I

.field public final isCinematicAspectRatio:Z

.field public final isLTR:Z

.field public final isSquare:Z

.field public final jpegRotation:I

.field public final text:Ljava/lang/String;

.field public final width:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/effect/renders/CacheKey;->width:I

    .line 3
    iput p2, p0, Lcom/android/camera/effect/renders/CacheKey;->height:I

    .line 4
    iput p3, p0, Lcom/android/camera/effect/renders/CacheKey;->jpegRotation:I

    .line 5
    iput-object p4, p0, Lcom/android/camera/effect/renders/CacheKey;->text:Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lcom/android/camera/effect/renders/CacheKey;->isCinematicAspectRatio:Z

    .line 7
    iput-boolean p6, p0, Lcom/android/camera/effect/renders/CacheKey;->isLTR:Z

    .line 8
    iput-boolean p7, p0, Lcom/android/camera/effect/renders/CacheKey;->isSquare:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lcom/android/camera/effect/renders/CacheKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/android/camera/effect/renders/CacheKey;

    .line 3
    iget v2, p0, Lcom/android/camera/effect/renders/CacheKey;->width:I

    iget v3, p1, Lcom/android/camera/effect/renders/CacheKey;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/effect/renders/CacheKey;->height:I

    iget v3, p1, Lcom/android/camera/effect/renders/CacheKey;->height:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/effect/renders/CacheKey;->jpegRotation:I

    iget v3, p1, Lcom/android/camera/effect/renders/CacheKey;->jpegRotation:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/CacheKey;->isCinematicAspectRatio:Z

    iget-boolean v3, p1, Lcom/android/camera/effect/renders/CacheKey;->isCinematicAspectRatio:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/CacheKey;->isLTR:Z

    iget-boolean v3, p1, Lcom/android/camera/effect/renders/CacheKey;->isLTR:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/effect/renders/CacheKey;->isSquare:Z

    iget-boolean v3, p1, Lcom/android/camera/effect/renders/CacheKey;->isSquare:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/camera/effect/renders/CacheKey;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/camera/effect/renders/CacheKey;->text:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/android/camera/effect/renders/CacheKey;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/effect/renders/CacheKey;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/effect/renders/CacheKey;->jpegRotation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/effect/renders/CacheKey;->text:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/CacheKey;->isCinematicAspectRatio:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/CacheKey;->isLTR:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/CacheKey;->isSquare:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
