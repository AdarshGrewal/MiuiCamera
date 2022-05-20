.class public Lcom/android/camera/fragment/BaseFragmentOperation;
.super Ljava/lang/Object;
.source "BaseFragmentOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentOperation$OperateFragment;
    }
.end annotation


# static fields
.field public static final OPERATE_HIDE_CURRENT:I = 0x7

.field public static final OPERATE_HIDE_TARGET:I = 0x8

.field public static final OPERATE_POP:I = 0x9

.field public static final OPERATE_POP_AND_CLEAR_OTHERS:I = 0x5

.field public static final OPERATE_PUSH:I = 0x4

.field public static final OPERATE_REMOVE:I = 0x2

.field public static final OPERATE_REMOVE_CURRENT:I = 0x3

.field public static final OPERATE_REPLACE:I = 0x1

.field public static final OPERATE_SHOW:I = 0x6

.field public static final OPERATE_UNKNOWN:I = -0x1


# instance fields
.field public containerViewId:I

.field public operateType:I

.field public pendingFragmentAlias:Ljava/lang/String;

.field public pendingFragmentInfo:I

.field public pendingSubFragmentInfo:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/16 v0, 0xf0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    .line 4
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    return-void
.end method

.method private checkOperation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public featureWith(ILjava/lang/String;)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 4
    iput-object p2, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    return-object p0
.end method

.method public hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public pop()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/16 v0, 0x9

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public push(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public push(II)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 6
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 7
    iput p2, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    return-object p0
.end method

.method public remove(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public saveWith(Lcom/android/camera/fragment/BaseFragmentOperation;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iget v1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    iget v1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public show(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x6

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    .line 3
    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method
