.class public Lcom/android/camera/scene/MiAlgoAsdSceneProfile;
.super Ljava/lang/Object;
.source "MiAlgoAsdSceneProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/scene/MiAlgoAsdSceneProfile$MialgoAsdSceneClass;
    }
.end annotation


# static fields
.field public static final AI_SCENE_DETECTED:I = 0x3

.field public static final AI_SCENE_SHIFT:I = 0x3e8

.field public static final BACKLIT:I = 0x2

.field public static final COMPAT_FOOD:I

.field public static final DIRTY:I = 0x6

.field public static final HDR:I = 0x8

.field public static final MACRO:I = 0x7

.field public static final MI_ALGO_ASD_VERSION_2_0:F = 2.0f

.field public static final MI_ALGO_ASD_VERSION_3_0:F = 3.0f

.field public static final NONE:I = 0x0

.field public static final NON_SEMANTIC_CLASS:I = 0x1

.field public static final ON_TRIPOD:I = 0x4

.field public static final PORTRAIT:I = 0x1

.field public static final SEMANTICS_CLASS:I = 0x0

.field public static final STATE_CLASS:I = 0x2

.field public static final SUPER_NIGHT:I = 0x3

.field public static final ULTRA_WIDE:I = 0x9

.field public static final ULTRA_WIDE_SCENE_SHIFT:I = 0x7d0

.field public static sSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/scene/MiScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    const/16 v1, 0x3e8

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->generateCompatAiASDType(II)I

    move-result v1

    sput v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->COMPAT_FOOD:I

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    iput v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    .line 5
    iget-object v3, v1, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    const v4, 0x7f1208b3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    sget-object v3, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v1

    .line 8
    iput v0, v1, Lcom/android/camera/scene/MiScene;->type:I

    .line 9
    iget-object v0, v1, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    const v3, 0x7f1208b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v1, 0x2

    .line 12
    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 13
    sget-object v3, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v3, 0x4

    .line 15
    iput v3, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 16
    sget-object v3, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v3, 0x6

    .line 18
    iput v3, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 19
    sget-object v3, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v3, 0x7

    .line 21
    iput v3, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 22
    iget-object v3, v0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    const v4, 0x7f1208b2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v3, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    .line 25
    sget v3, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->COMPAT_FOOD:I

    iput v3, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 26
    sget-object v3, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/16 v3, 0x9

    .line 28
    iput v3, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 29
    iget-object v3, v0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    sget-boolean v4, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    const v5, 0x7f12099f

    const v6, 0x7f12099e

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v2, v0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    sget-boolean v3, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/16 v1, 0x8

    .line 33
    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    .line 34
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearInitASDScenes()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/scene/MiScene;->setEnable(Z)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/android/camera/scene/MiScene;->isChange(F)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generateCompatAiASDType(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static getSceneTipResId(II)I
    .locals 4

    const/4 v0, 0x0

    if-lez p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/scene/MiScene;

    .line 2
    iget v3, v2, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v3, p0, :cond_1

    .line 3
    iget-object v2, v2, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 5
    :cond_2
    sget-object p0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/scene/MiScene;

    iget-object p0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 6
    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/scene/MiScene;

    iget-object p0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isAlreadyTip()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera/scene/MiScene;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isCheckSceneEnable(II)Z
    .locals 0

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSceneChange(II)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    .line 3
    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    int-to-float p0, p1

    .line 4
    invoke-virtual {v1, p0}, Lcom/android/camera/scene/MiScene;->isChange(F)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isTipEnable(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    .line 3
    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/scene/MiScene;->isEnable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setTipEnable(IZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    .line 3
    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lcom/android/camera/scene/MiScene;->setEnable(Z)V

    :cond_1
    return-void
.end method
