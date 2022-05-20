.class public Lcom/android/camera/module/loader/StartControlFeatureDetail;
.super Ljava/lang/Object;
.source "StartControlFeatureDetail.java"


# instance fields
.field public fragmentAlias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;"
        }
    .end annotation
.end field

.field public interceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/interceptor/BaseModuleInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public topConfigItems:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFragmentInfo(II)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    invoke-virtual {v1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFragmentInfo(IILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    invoke-virtual {v1, p2, p3}, Lcom/android/camera/fragment/BaseFragmentOperation;->featureWith(ILjava/lang/String;)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInterceptor(Lcom/android/camera/module/interceptor/BaseModuleInterceptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->interceptorList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->interceptorList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->interceptorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFragmentAlias()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    return-object v0
.end method

.method public getInterceptorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/interceptor/BaseModuleInterceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->interceptorList:Ljava/util/List;

    return-object v0
.end method

.method public getTopConfigItems()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->topConfigItems:[I

    return-object v0
.end method

.method public hideFragment(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCurrentFragment(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    new-instance v1, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v1, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs setTopConfigItems([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->topConfigItems:[I

    return-void
.end method
