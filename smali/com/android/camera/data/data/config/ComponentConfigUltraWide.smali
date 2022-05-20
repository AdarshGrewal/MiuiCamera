.class public Lcom/android/camera/data/data/config/ComponentConfigUltraWide;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigUltraWide.java"


# static fields
.field public static final ULTRA_WIDE_VALUE_OFF:Ljava/lang/String; = "OFF"

.field public static final ULTRA_WIDE_VALUE_ON:Ljava/lang/String; = "ON"


# instance fields
.field public mUltraWideResource:[I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getUltraWideResources()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->mUltraWideResource:[I

    return-void
.end method

.method private getUltraWideResources()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f08053b
        0x7f08053c
    .end array-data
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "OFF"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const/4 v0, 0x0

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
    .locals 2

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref_ultra_wide_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string/jumbo p1, "pref_ultra_wide_status163"

    return-object p1

    :cond_1
    const-string/jumbo p1, "pref_ultra_wide_status162"

    return-object p1

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unspecified ultra wide"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ON"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->mUltraWideResource:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    return p1

    :cond_0
    const-string v0, "OFF"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->mUltraWideResource:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ON"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f1200cb

    return p1

    :cond_0
    const-string v0, "OFF"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1200ca

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isSupportUltraWide()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUltraWideOnInMode(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 2

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0ooo()Z

    move-result v0

    if-nez p2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xa6

    if-eq p1, p2, :cond_1

    const/16 p2, 0xab

    if-eq p1, p2, :cond_1

    const/16 p2, 0xac

    if-eq p1, p2, :cond_1

    .line 3
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 p2, 0x0

    const v0, 0x7f08053b

    const-string v1, "OFF"

    invoke-direct {p1, v0, v0, p2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08053c

    const-string v1, "ON"

    invoke-direct {p1, v0, v0, p2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public resetUltraWide(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 3

    const/16 v0, 0xa3

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OFF"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    const/16 v0, 0xa1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    const/16 v0, 0xac

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_2
    const/16 v0, 0xa2

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 13
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOo0O()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xad

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_4
    const/16 v0, 0xaf

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_5
    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
