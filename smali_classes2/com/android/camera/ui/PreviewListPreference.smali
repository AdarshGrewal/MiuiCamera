.class public Lcom/android/camera/ui/PreviewListPreference;
.super Lmiuix/preference/DropDownPreference;
.source "PreviewListPreference.java"


# instance fields
.field public mStoredDefaultValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getEntryByIndex(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getStoredDefaultValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewListPreference;->mStoredDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/PreviewListPreference;->mStoredDefaultValue:Ljava/lang/String;

    return-object p1
.end method
