.class public Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
.super Ljava/lang/Object;
.source "TopItemResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public contentDescriptString:Ljava/lang/String;

.field public isActivated:Z

.field public isColoring:Z

.field public mContentDescriptionStringId:I

.field public newBackgroundResourceId:I

.field public newImageResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isColoring:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    iget v1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->newImageResourceId:I

    iget v2, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->newBackgroundResourceId:I

    iget v3, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->mContentDescriptionStringId:I

    iget-object v4, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->contentDescriptString:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isActivated:Z

    iget-boolean v6, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isColoring:Z

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;-><init>(IIILjava/lang/String;ZZLcom/android/camera/fragment/modeui/topconfig/TopItemResource$1;)V

    return-object v8
.end method

.method public setActivated(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isActivated:Z

    return-object p0
.end method

.method public setColoring(Z)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->isColoring:Z

    return-object p0
.end method

.method public setContentDescriptString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->contentDescriptString:Ljava/lang/String;

    return-object p0
.end method

.method public setNewBackgroundResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->newBackgroundResourceId:I

    return-object p0
.end method

.method public setNewImageResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->newImageResourceId:I

    return-object p0
.end method

.method public setmContentDescriptionStringId(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/TopItemResource$Builder;->mContentDescriptionStringId:I

    return-object p0
.end method
