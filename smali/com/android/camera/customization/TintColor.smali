.class public Lcom/android/camera/customization/TintColor;
.super Ljava/lang/Object;
.source "TintColor.java"


# static fields
.field public static final COLOR_BLUE:Ljava/lang/String; = "#30C0FF"

.field public static final COLOR_CHAMPAGNE:Ljava/lang/String; = "#FFC396"

.field public static final COLOR_CYAN:Ljava/lang/String; = "#75E9E3"

.field public static final COLOR_LILAC:Ljava/lang/String; = "#9895FF"

.field public static final COLOR_YELLOW:Ljava/lang/String; = "#FFCE16"

.field public static final KEY_TINT_COLOR:Ljava/lang/String; = "pref_tint_color"

.field public static final LOG_TAG:Ljava/lang/String; = "TintColor"

.field public static sAvailableColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final color:Ljava/lang/String;

.field public final name:I

.field public final previewCH:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->availableColors()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/customization/TintColor;->color:Ljava/lang/String;

    iput p2, p0, Lcom/android/camera/customization/TintColor;->name:I

    iput p3, p0, Lcom/android/camera/customization/TintColor;->previewCH:I

    return-void
.end method

.method public static availableColors()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#FFCE16"

    const v3, 0x7f120314

    const v4, 0x7f0808f7

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#FFC396"

    const v3, 0x7f120313

    const v4, 0x7f0808f4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#9895FF"

    const v3, 0x7f120315

    const v4, 0x7f0808f6

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#30C0FF"

    const v3, 0x7f120317

    const v4, 0x7f0808f3

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#75E9E3"

    const v3, 0x7f120318

    const v4, 0x7f0808f5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAvailableColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    return-object v0
.end method

.method public static getTintColor()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v0

    sget-object v1, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintColor;

    iget-object v0, v0, Lcom/android/camera/customization/TintColor;->color:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "#FFCE16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "#FFC396"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v1, "#9895FF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "#75E9E3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "#30C0FF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const-string v0, ""

    goto :goto_2

    :cond_1
    const-string v0, "cyan"

    goto :goto_2

    :cond_2
    const-string v0, "blue"

    goto :goto_2

    :cond_3
    const-string v0, "lilac"

    goto :goto_2

    :cond_4
    const-string v0, "champagne"

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "yellow"

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6abb2473 -> :sswitch_4
        -0x63a0421d -> :sswitch_3
        -0x6011cda2 -> :sswitch_2
        -0x491901f0 -> :sswitch_1
        -0x4918bf56 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isYellowTintColor()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v0

    sget-object v1, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintColor;

    iget-object v0, v0, Lcom/android/camera/customization/TintColor;->color:Ljava/lang/String;

    const-string v1, "#FFCE16"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static persistColorId(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string/jumbo v1, "pref_tint_color"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static readColorId()I
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string/jumbo v1, "pref_tint_color"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static tintColor()I
    .locals 2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v0

    sget-object v1, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintColor;

    invoke-virtual {v0}, Lcom/android/camera/customization/TintColor;->color()I

    move-result v0

    return v0
.end method


# virtual methods
.method public color()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/customization/TintColor;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public name()I
    .locals 1

    iget v0, p0, Lcom/android/camera/customization/TintColor;->name:I

    return v0
.end method

.method public previewResource()I
    .locals 1

    iget v0, p0, Lcom/android/camera/customization/TintColor;->previewCH:I

    return v0
.end method
