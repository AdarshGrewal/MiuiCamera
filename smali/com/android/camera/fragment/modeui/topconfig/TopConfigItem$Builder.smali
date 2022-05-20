.class public Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
.super Ljava/lang/Object;
.source "TopConfigItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public configItem:I

.field public gravity:I

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
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb0

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->configItem:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->gravity:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->configItem:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->gravity:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->mExtraResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->subTopConfigItems:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;-><init>(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$1;)V

    return-object v0
.end method

.method public setConfigItem(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->configItem:I

    return-object p0
.end method

.method public setExtraResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->mExtraResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;

    return-object p0
.end method

.method public setGravity(I)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->gravity:I

    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setResourceUpdater(Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->mResourceUpdater:Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;

    return-object p0
.end method

.method public setSubTopConfigItems(Ljava/util/List;)Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem;",
            ">;)",
            "Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$Builder;->subTopConfigItems:Ljava/util/List;

    return-object p0
.end method
