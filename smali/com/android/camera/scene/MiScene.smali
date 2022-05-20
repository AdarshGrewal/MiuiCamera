.class public Lcom/android/camera/scene/MiScene;
.super Ljava/lang/Object;
.source "MiScene.java"


# instance fields
.field public lastResult:F

.field public mEnable:Z

.field public type:I

.field public valueArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    const v1, -0x10f447

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static create()Lcom/android/camera/scene/MiScene;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/scene/MiScene;

    invoke-direct {v0}, Lcom/android/camera/scene/MiScene;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isChange(F)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/scene/MiScene;->lastResult:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput p1, p0, Lcom/android/camera/scene/MiScene;->lastResult:F

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/scene/MiScene;->mEnable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/scene/MiScene;->mEnable:Z

    return-void
.end method
