.class public abstract Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;
.super Lmiuix/springback/trigger/BaseTrigger$Action;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/BaseTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndeterminateUpAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnIndeterminateUpActionViewListener;,
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_OFFSET_POINT:I

.field public static final DEFAULT_TRIGGER_TEXTIDS:[I


# instance fields
.field public mCountNoData:I

.field public mTriggerTextIDs:[I

.field public mTriggerTexts:[Ljava/lang/String;

.field public mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_refresh:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_refresh_fail:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_nodata:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_up_none:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-static {}, Lmiuix/springback/trigger/BaseTrigger;->access$300()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    if-ltz p1, :cond_0

    iput-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid offsetPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    sget-object p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    iput-object p1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

    return-void
.end method

.method public constructor <init>(II[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    sget-object p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    if-eqz p3, :cond_0

    array-length p2, p3

    array-length p1, p1

    if-ne p2, p1, :cond_0

    iput-object p3, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid text Ids"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[I)V
    .locals 2

    invoke-static {}, Lmiuix/springback/trigger/BaseTrigger;->access$300()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    array-length p1, p2

    array-length v0, v0

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTextIDs:[I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid text Ids"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid offsetPoint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCountNoData()I
    .locals 1

    iget v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    return v0
.end method

.method public isNoData()Z
    .locals 1

    iget v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyActionNoData()V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    invoke-interface {v0, p0, v1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;I)V

    :cond_0
    return-void
.end method

.method public notifyLoadCancel()V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_0
    return-void
.end method

.method public notifyLoadComplete()V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_0
    return-void
.end method

.method public notifyLoadFail()V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_0
    return-void
.end method

.method public notifyTriggerTextIndex(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;->onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIndeterminateUpAction()V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mCountNoData:I

    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_0
    return-void
.end method
