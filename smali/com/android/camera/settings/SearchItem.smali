.class public Lcom/android/camera/settings/SearchItem;
.super Ljava/lang/Object;
.source "SearchItem.java"


# instance fields
.field public mExtras:Ljava/lang/String;

.field public mIsSecondPageItem:Z

.field public mTargetActivity:Ljava/lang/String;

.field public mTitleResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/settings/SearchItem;->mTitleResId:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/settings/SearchItem;->mTitleResId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/settings/SearchItem;->mIsSecondPageItem:Z

    iput-object p2, p0, Lcom/android/camera/settings/SearchItem;->mTargetActivity:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/settings/SearchItem;->mExtras:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTitleResId()I
    .locals 1

    iget v0, p0, Lcom/android/camera/settings/SearchItem;->mTitleResId:I

    return v0
.end method

.method public isSecondPageItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/settings/SearchItem;->mIsSecondPageItem:Z

    return v0
.end method
