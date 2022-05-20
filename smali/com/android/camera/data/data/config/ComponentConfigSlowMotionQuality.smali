.class public Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigSlowMotionQuality.java"


# static fields
.field public static final QUALITY_1080P:Ljava/lang/String; = "6"

.field public static final QUALITY_2160P:Ljava/lang/String; = "8"

.field public static final QUALITY_720P:Ljava/lang/String; = "5"

.field public static final SIZE_FPS_1080_120:Ljava/lang/String; = "1920x1080:120"

.field public static final TAG:Ljava/lang/String; = "ComponentConfigSlowMotionQuality"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 2
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkValueValid: invalid value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ComponentConfigSlowMotionQuality"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public disableUpdate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->getKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;->checkValueValid(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-class p1, Lcom/android/camera/data/data/config/ComponentConfigSlowMotionQuality;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items do not have this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",so return defaultValue = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "5"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f120884

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

    const-string/jumbo p1, "pref_video_new_slow_motion_key"

    return-object p1
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xac

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/android/camera/CameraSettings;->getSupportedHfrSettings(Lcom/android/camera2/CameraCapabilities;)Ljava/util/ArrayList;

    move-result-object p3

    const-string v1, "1920x1080:120"

    .line 3
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0O00()S

    move-result v1

    const-string v2, "6"

    const v3, 0x7f120825

    const v4, 0x7f120826

    const/16 v5, 0x78

    const-string v6, "5"

    if-ne v1, v5, :cond_1

    if-eqz p2, :cond_2

    .line 5
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOoo()S

    move-result v1

    if-ne v1, v5, :cond_4

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    :cond_2
    const p2, 0x7f080266

    if-eqz p3, :cond_3

    .line 6
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p1, p2, p2, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const p2, 0x7f080264

    invoke-direct {p1, p2, p2, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p3, p2, p2, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0O00()S

    move-result p2

    if-ne p2, v5, :cond_5

    .line 10
    invoke-virtual {p0, p1, v6}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_4
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const p2, 0x7f080265

    invoke-direct {p1, p2, p2, v4, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_5

    .line 12
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const p2, 0x7f080263

    invoke-direct {p1, p2, p2, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_5
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method
