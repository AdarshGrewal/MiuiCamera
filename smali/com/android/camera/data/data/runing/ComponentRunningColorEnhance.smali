.class public Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningColorEnhance.java"


# instance fields
.field public mIsEnabled:Z

.field public mIsSupported:Z

.field public mRecordValue:Z


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

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsSupported:Z

    return-void
.end method

.method private getValue(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsSupported:Z

    const/16 v1, 0xa3

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-nez p2, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->supportColorEnhance()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsSupported:Z

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f1208ac

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

    const-string/jumbo p1, "pref_color_enhance"

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 1

    const/16 v0, 0xa3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    return p1
.end method

.method public isSupport()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsSupported:Z

    return v0
.end method

.method public reInit(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->getValue(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    return-void
.end method

.method public reset(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    return-void
.end method

.method public setEnabled(ZI)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mIsEnabled:Z

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningColorEnhance;->mRecordValue:Z

    :cond_0
    return-void
.end method

.method public supportColorEnhance()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O00()Z

    move-result v0

    return v0
.end method
