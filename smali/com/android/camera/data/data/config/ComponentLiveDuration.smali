.class public Lcom/android/camera/data/data/config/ComponentLiveDuration;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentLiveDuration.java"


# static fields
.field public static final LIVE_DURATION_15S:Ljava/lang/String; = "15000"

.field public static final LIVE_DURATION_30S:Ljava/lang/String; = "30000"

.field public static final LIVE_DURATION_60S:Ljava/lang/String; = "60000"

.field public static final LIVE_DURATION_90S:Ljava/lang/String; = "90000"

.field public static final TAG:Ljava/lang/String; = "ComponentLiveDuration"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/extra/DataItemLive;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    const v3, 0x7f1206ee

    const-string v4, "15000"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getLiveDuration15sRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f08023d
        0x7f08023d
    .end array-data
.end method

.method private getLiveDuration30sRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f08023f
        0x7f08023f
    .end array-data
.end method

.method private getLiveDuration60sRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f080241
        0x7f080241
    .end array-data
.end method

.method private getLiveDuration90sRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f080243
        0x7f080243
    .end array-data
.end method

.method private initItems(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    const v5, 0x7f1206ee

    const-string v6, "15000"

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration30sRes()[I

    move-result-object v1

    aget v1, v1, v2

    .line 6
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration30sRes()[I

    move-result-object v3

    aget v3, v3, v4

    const-string v6, "30000"

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration60sRes()[I

    move-result-object v1

    aget v1, v1, v2

    .line 9
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration60sRes()[I

    move-result-object v3

    aget v3, v3, v4

    const-string v6, "60000"

    invoke-direct {v0, v1, v3, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration90sRes()[I

    move-result-object v1

    aget v1, v1, v2

    .line 12
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration90sRes()[I

    move-result-object v2

    aget v2, v2, v4

    const-string v3, "90000"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "15000"

    return-object p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentPromptInfo(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f10001d

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "15000"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f120814

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_mi_live_duration"

    return-object p1
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "15000"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration15sRes()[I

    move-result-object p1

    aget p1, p1, v1

    return p1

    :cond_0
    const-string v0, "30000"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration30sRes()[I

    move-result-object p1

    aget p1, p1, v1

    return p1

    :cond_1
    const-string v0, "60000"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration60sRes()[I

    move-result-object p1

    aget p1, p1, v1

    return p1

    :cond_2
    const-string v0, "90000"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getLiveDuration90sRes()[I

    move-result-object p1

    aget p1, p1, v1

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public getValueSelectedShadowDrawable(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "15000"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f08023e

    return p1

    :cond_0
    const-string v0, "30000"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f080240

    return p1

    :cond_1
    const-string v0, "60000"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f080242

    return p1

    :cond_2
    const-string v0, "90000"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f080244

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public reInit(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->initItems(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p1
.end method
