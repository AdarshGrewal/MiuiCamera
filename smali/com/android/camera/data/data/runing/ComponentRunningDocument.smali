.class public Lcom/android/camera/data/data/runing/ComponentRunningDocument;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningDocument.java"


# static fields
.field public static final DOCUMENT_BLACK_WHITE:Ljava/lang/String; = "bin"

.field public static final DOCUMENT_ORIGIN:Ljava/lang/String; = "raw"

.field public static final DOCUMENT_STRENGTHEN:Ljava/lang/String; = "color"


# instance fields
.field public mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field public mSupported:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "raw"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v8, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const v5, 0x7f120354

    const v6, 0x7f12004d

    const-string/jumbo v7, "raw"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const v13, 0x7f120350

    const v14, 0x7f12004c

    const-string v15, "bin"

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const/4 v5, -0x1

    const v6, 0x7f120355

    const v7, 0x7f12004e

    const-string v8, "color"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_document_mode_value_key"

    return-object p1
.end method

.method public isSwitchOn(I)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mSupported:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v0, "pref_document_mode_key"

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public reInit(IIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mSupported:Z

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p3

    invoke-virtual {p3}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xba

    if-ne p1, p3, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mSupported:Z

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    const-string/jumbo v0, "pref_document_mode_key"

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningDocument;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
