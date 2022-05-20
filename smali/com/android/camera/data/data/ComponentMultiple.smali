.class public abstract Lcom/android/camera/data/data/ComponentMultiple;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentMultiple.java"


# instance fields
.field public mTypeItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/DataItemBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/android/camera/data/data/DataItemBase;",
            ">(TD;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "provided by TypeItem"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "refactor later"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "provided by TypeItem"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTypeItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/TypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentMultiple;->mTypeItemList:Ljava/util/List;

    return-object v0
.end method

.method public getValueByItem(Lcom/android/camera/data/data/TypeItem;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/data/data/TypeItem<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->asString()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->asInteger()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->asBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mDefaultValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract initTypeElements(Landroid/content/Context;ILcom/android/camera2/CameraCapabilities;I)V
.end method

.method public varargs insert([Lcom/android/camera/data/data/TypeItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentMultiple;->mTypeItemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentMultiple;->mTypeItemList:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 4
    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentMultiple;->mTypeItemList:Ljava/util/List;

    if-eqz v0, :cond_1

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

.method public putValueWithItem(Lcom/android/camera/data/data/TypeItem;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/data/data/TypeItem<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {v1}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->asString()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-interface {v1, v0, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->asInteger()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/data/data/TypeItem;->asBoolean()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 9
    :cond_2
    :goto_0
    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method
