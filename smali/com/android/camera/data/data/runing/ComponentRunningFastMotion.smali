.class public Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningFastMotion.java"


# instance fields
.field public mCurrentType:Ljava/lang/String;

.field public mIsClosed:Z

.field public mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mIsClosed:Z

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/data/data/runing/DataItemRunning;",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    .line 6
    iput-object p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCurrentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mCurrentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "off"

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
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_fast_motion_key"

    return-object p1
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mIsClosed:Z

    return v0
.end method

.method public reInit()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mIsClosed:Z

    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->mCurrentType:Ljava/lang/String;

    return-void
.end method
