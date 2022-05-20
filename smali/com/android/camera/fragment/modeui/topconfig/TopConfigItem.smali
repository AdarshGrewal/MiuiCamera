.class public Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;
.super Ljava/lang/Object;
.source "TopConfigItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;,
        Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;,
        Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    }
.end annotation


# instance fields
.field public configItem:I

.field public enable:Z

.field public gravity:I

.field public index:I

.field public mExtraResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

.field public mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

.field public onClickListener:Landroid/view/View$OnClickListener;

.field public subTopConfigItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->enable:Z

    .line 4
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$000(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->configItem:I

    .line 5
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$100(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->gravity:I

    .line 6
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$200(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    .line 7
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$300(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mExtraResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    .line 8
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$400(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->onClickListener:Landroid/view/View$OnClickListener;

    .line 9
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->access$500(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->subTopConfigItems:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;-><init>(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getConfigItem()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->configItem:I

    return v0
.end method

.method public getExtraResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mExtraResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->gravity:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->index:I

    return v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getResourceUpdater()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    return-object v0
.end method

.method public getSubTopConfigItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->subTopConfigItems:Ljava/util/List;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->enable:Z

    return v0
.end method

.method public setConfigItem(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->configItem:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->enable:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->gravity:I

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->index:I

    return-void
.end method

.method public setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;->mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    return-void
.end method
