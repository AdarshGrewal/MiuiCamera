.class public Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
.super Ljava/lang/Object;
.source "BasePanelEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mBgUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

.field public mDesc:I

.field public mHideSelf:Z

.field public mIsActivated:Z

.field public mKey:I

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mRes:I

.field public mSupportRotation:Z

.field public mSupportedCallback:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mKey:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mSupportRotation:Z

    .line 4
    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mKey:I

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mSupportedCallback:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mKey:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mRes:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mBgUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mDesc:I

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mIsActivated:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mSupportRotation:Z

    return p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mHideSelf:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)V

    return-object v0
.end method

.method public setActivated(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mIsActivated:Z

    return-object p0
.end method

.method public setBgUpdater(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mBgUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    return-object p0
.end method

.method public setDesc(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mDesc:I

    return-object p0
.end method

.method public setHideSelf(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mHideSelf:Z

    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setRes(I)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mRes:I

    return-object p0
.end method

.method public setSupportRotation(Z)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mSupportRotation:Z

    return-object p0
.end method

.method public setSupportedCallback(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->mSupportedCallback:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;

    return-object p0
.end method
