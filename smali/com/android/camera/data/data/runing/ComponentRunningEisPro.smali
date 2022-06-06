.class public Lcom/android/camera/data/data/runing/ComponentRunningEisPro;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningEisPro.java"


# static fields
.field public static final EIS_VALUE_NORMAL:Ljava/lang/String; = "normal"

.field public static final EIS_VALUE_OFF:Ljava/lang/String; = "off"

.field public static final EIS_VALUE_PRO:Ljava/lang/String; = "pro"


# instance fields
.field public mPreValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const-string/jumbo p1, "off"

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->mPreValue:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisOffRes()I

    move-result v2

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisOffRes()I

    move-result v3

    const v4, 0x7f120648

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisNormalRes()I

    move-result v1

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisNormalRes()I

    move-result v2

    const v3, 0x7f120647

    const-string/jumbo v4, "normal"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisProRes()I

    move-result v1

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisProRes()I

    move-result v2

    const v3, 0x7f120649

    const-string/jumbo v4, "pro"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getConfigEisNormalRes()I
    .locals 1

    const v0, 0x7f080268

    return v0
.end method

.method private getConfigEisOffRes()I
    .locals 1

    const v0, 0x7f080267

    return v0
.end method

.method private getConfigEisProRes()I
    .locals 1

    const v0, 0x7f080269

    return v0
.end method


# virtual methods
.method public getComponentPreValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->mPreValue:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->isEmpty()Z

    move-result p1

    const-string/jumbo v0, "off"

    if-eqz p1, :cond_0

    :cond_0
    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f12064a

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

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref_eis_pro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unspecified EIS"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisOffRes()I

    move-result p1

    return p1

    :cond_0
    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisNormalRes()I

    move-result p1

    return p1

    :cond_1
    const-string/jumbo v0, "pro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getConfigEisProRes()I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f1200ba

    return p1

    :cond_0
    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f1200bb

    return p1

    :cond_1
    const-string/jumbo v0, "pro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f1200bc

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setComponentPreValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningEisPro;->mPreValue:Ljava/lang/String;

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackSuperEisPro(ILjava/lang/String;)V

    return-void
.end method
