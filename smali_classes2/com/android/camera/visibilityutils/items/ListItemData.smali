.class public Lcom/android/camera/visibilityutils/items/ListItemData;
.super Ljava/lang/Object;
.source "ListItemData.java"


# static fields
.field public static final SHOW_LOGS:Z = false

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mIndexInAdapter:Ljava/lang/Integer;

.field public mIsMostVisibleItemChanged:Z

.field public mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/app/LauncherActivity$ListItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/visibilityutils/items/ListItemData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillWithData(ILandroid/view/View;)Lcom/android/camera/visibilityutils/items/ListItemData;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIndexInAdapter:Ljava/lang/Integer;

    .line 2
    iput-object p2, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIndexInAdapter:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibilityPercents(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/camera/visibilityutils/items/ListItem;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;->getIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/visibilityutils/items/ListItem;

    invoke-virtual {p0}, Lcom/android/camera/visibilityutils/items/ListItemData;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera/visibilityutils/items/ListItem;->getVisibilityPercents(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIndexInAdapter:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMostVisibleItemChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIsMostVisibleItemChanged:Z

    return v0
.end method

.method public setMostVisibleItemChanged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIsMostVisibleItemChanged:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListItemData{mIndexInAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIndexInAdapter:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMostVisibleItemChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/visibilityutils/items/ListItemData;->mIsMostVisibleItemChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
