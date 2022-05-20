.class public abstract Lmiuix/springback/trigger/BaseTrigger;
.super Ljava/lang/Object;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;,
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;,
        Lmiuix/springback/trigger/BaseTrigger$SimpleAction;,
        Lmiuix/springback/trigger/BaseTrigger$Action;
    }
.end annotation


# static fields
.field public static mDefaultIndeterminateDistance:I

.field public static mDefaultSimpleEnter:I

.field public static mDefaultSimpleTrigger:I

.field public static mDefaultUpIndeterminateDistance:I


# instance fields
.field public mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/springback/trigger/BaseTrigger$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/springback/R$dimen;->miuix_sbl_action_indeterminate_distance:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultIndeterminateDistance:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/springback/R$dimen;->miuix_sbl_action_upindeterminate_distance:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultUpIndeterminateDistance:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_simple_enter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleEnter:I

    .line 8
    sput p1, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleTrigger:I

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleEnter:I

    return v0
.end method

.method public static synthetic access$100()I
    .locals 1

    .line 1
    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleTrigger:I

    return v0
.end method

.method public static synthetic access$200()I
    .locals 1

    .line 1
    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultIndeterminateDistance:I

    return v0
.end method

.method public static synthetic access$300()I
    .locals 1

    .line 1
    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultUpIndeterminateDistance:I

    return v0
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    sget-object v1, Lmiuix/springback/trigger/BaseTrigger$Action;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    .line 4
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "action conflict."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/springback/trigger/BaseTrigger$Action;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getIndeterminateAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz v1, :cond_0

    .line 3
    instance-of v2, v1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    check-cast v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    return-object v0
.end method

.method public getSimpleAction()Lmiuix/springback/trigger/BaseTrigger$SimpleAction;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$Action;

    if-eqz v1, :cond_0

    .line 3
    instance-of v2, v1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract isActionRunning()Z
.end method

.method public abstract isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
.end method

.method public removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->isActionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 4
    iput-object v2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    .line 5
    iput-object v2, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    return v1

    :cond_1
    if-eqz p1, :cond_3

    .line 6
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_2

    .line 8
    move-object v0, p1

    check-cast v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 9
    iput-object v2, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 10
    :cond_2
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return v1
.end method
