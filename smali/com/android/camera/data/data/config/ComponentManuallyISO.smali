.class public Lcom/android/camera/data/data/config/ComponentManuallyISO;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyISO.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ComponentManuallyISO"


# instance fields
.field public mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

.field public mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Lcom/android/camera/data/data/ComponentDataItem;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic OooO0O0(Ljava/lang/String;Lcom/android/camera/data/data/ComponentDataItem;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private createItems(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera2/CameraCapabilities;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    const-string p1, "ComponentManuallyISO"

    const-string p2, "initItems: CameraCapabilities is null!!!"

    .line 2
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/16 v1, 0xb4

    if-ne p1, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    .line 5
    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p2}, Lcom/android/camera2/CameraCapabilities;->getIsoRange()Landroid/util/Range;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x1

    .line 9
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 10
    aget-object v3, p1, v2

    .line 11
    iget-object v4, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v2, :cond_2

    if-gt v1, v4, :cond_3

    if-gt v4, p2, :cond_3

    .line 12
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private getFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OooO()Z

    move-result v1

    const-string v3, "1600"

    const v4, 0x7f120705

    const-string v5, "800"

    const v6, 0x7f120716

    const-string v7, "400"

    const v8, 0x7f12070c

    const-string v9, "200"

    const v10, 0x7f120706

    const/4 v11, 0x7

    const-string v14, "100"

    const v15, 0x7f1206fe

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const-string v12, "0"

    const v2, 0x7f1206fd

    const/16 v20, 0x0

    const/4 v13, -0x1

    if-nez v1, :cond_2

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOoo()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-array v1, v11, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 4
    new-instance v11, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v11, v13, v13, v2, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v11, v1, v20

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v2, v13, v13, v15, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v19

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v2, v13, v13, v10, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v18

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v2, v13, v13, v8, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v17

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v2, v13, v13, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v2, v13, v13, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v3, "3200"

    const v4, 0x7f12070b

    invoke-direct {v2, v13, v13, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    goto/16 :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x18

    new-array v1, v1, [Lcom/android/camera/data/data/ComponentDataItem;

    .line 5
    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v4, v13, v13, v2, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v20

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f12070f

    const-string v12, "50"

    invoke-direct {v2, v13, v13, v4, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v19

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120712

    const-string v12, "64"

    invoke-direct {v2, v13, v13, v4, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v18

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120715

    const-string v12, "80"

    invoke-direct {v2, v13, v13, v4, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v17

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v2, v13, v13, v15, v14}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v16

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120701

    const-string v12, "125"

    invoke-direct {v2, v13, v13, v4, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120704

    const-string v12, "160"

    invoke-direct {v2, v13, v13, v4, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v2, v13, v13, v10, v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v1, v11

    const/16 v2, 0x8

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f120708

    const-string v10, "250"

    invoke-direct {v4, v13, v13, v9, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0x9

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f12070a

    const-string v10, "320"

    invoke-direct {v4, v13, v13, v9, v10}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xa

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v4, v13, v13, v8, v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xb

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f120710

    const-string v8, "500"

    invoke-direct {v4, v13, v13, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xc

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f120713

    const-string v8, "640"

    invoke-direct {v4, v13, v13, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xd

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v4, v13, v13, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xe

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f1206ff

    const-string v6, "1000"

    invoke-direct {v4, v13, v13, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0xf

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f120702

    const-string v6, "1250"

    invoke-direct {v4, v13, v13, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0x10

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f120705

    invoke-direct {v4, v13, v13, v5, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v4, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120707

    const-string v5, "2000"

    invoke-direct {v3, v13, v13, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120709

    const-string v5, "2500"

    invoke-direct {v3, v13, v13, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v4, "3200"

    const v5, 0x7f12070b

    invoke-direct {v3, v13, v13, v5, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f12070d

    const-string v5, "4000"

    invoke-direct {v3, v13, v13, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120711

    const-string v5, "5000"

    invoke-direct {v3, v13, v13, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120714

    const-string v5, "6400"

    invoke-direct {v3, v13, v13, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-instance v3, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f120703

    const-string v5, "12800"

    invoke-direct {v3, v13, v13, v4, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    .line 6
    :goto_1
    iget-object v1, v0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v1
.end method

.method private getVideoFullItems()[Lcom/android/camera/data/data/ComponentDataItem;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v1, 0x0

    .line 2
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206fd

    const/4 v4, -0x1

    const-string v5, "0"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f12070f

    const-string v5, "50"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120712

    const-string v5, "64"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120715

    const-string v5, "80"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206fe

    const-string v5, "100"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120701

    const-string v5, "125"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120704

    const-string v5, "160"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120706

    const-string v5, "200"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120708

    const-string v5, "250"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f12070a

    const-string v5, "320"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f12070c

    const-string v5, "400"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120710

    const-string v5, "500"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120713

    const-string v5, "640"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120716

    const-string v5, "800"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f1206ff

    const-string v5, "1000"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120702

    const-string v5, "1250"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120705

    const-string v5, "1600"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120707

    const-string v5, "2000"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120709

    const-string v5, "2500"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f12070b

    const-string v5, "3200"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f12070d

    const-string v5, "4000"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120711

    const-string v5, "5000"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120714

    const-string v5, "6400"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120703

    const-string v5, "12800"

    invoke-direct {v2, v4, v4, v3, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyISO;->mVideoFullItems:[Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OooO()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OOoo()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f03002a

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f03002b

    .line 3
    :goto_1
    invoke-static {p2, p1}, Lcom/android/camera/Util;->isStringValueContained(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO00o/OooO0OO;

    invoke-direct {v2, v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO00o/OooO0OO;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentDescriptionString()I
    .locals 1

    const v0, 0x7f1205da

    return v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "0"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f120719

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
    .locals 1

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "pref_qc_pro_video_camera_iso_key"

    return-object p1

    :cond_0
    const-string/jumbo p1, "pref_qc_fastmotion_pro_camera_iso_key"

    return-object p1

    :cond_1
    const-string/jumbo p1, "pref_qc_camera_iso_key"

    return-object p1
.end method

.method public reInit(ILcom/android/camera2/CameraCapabilities;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->createItems(ILcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 2
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO00o/OooO0O0;

    invoke-direct {v1, p2}, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO00o/OooO00o/OooO0O0;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public resetComponentValue(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyISO;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
