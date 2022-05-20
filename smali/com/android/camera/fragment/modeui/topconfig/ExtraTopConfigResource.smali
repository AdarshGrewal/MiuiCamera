.class public Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
.super Ljava/lang/Object;
.source "ExtraTopConfigResource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    }
.end annotation


# instance fields
.field public componentData:Lcom/android/camera/data/data/ComponentData;

.field public enableClick:Z

.field public isShowRightAngleTag:Z

.field public isShowText:Z

.field public isSwitchOn:Z

.field public textResource:I

.field public textResourceString:Ljava/lang/String;

.field public topResourceId:I

.field public topSelectedAnimID:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$000(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopResourceId(I)V

    .line 4
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$100(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTopSelectedAnimID(I)V

    .line 5
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$200(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTextResource(I)V

    .line 6
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$300(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setTextResourceString(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$400(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setSwitchOn(Z)V

    .line 8
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$500(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setShowRightAngleTag(Z)V

    .line 9
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$600(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setEnableClick(Z)V

    .line 10
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$700(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Lcom/android/camera/data/data/ComponentData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setComponentData(Lcom/android/camera/data/data/ComponentData;)V

    .line 11
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->access$800(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->setShowText(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;-><init>(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)V

    return-void
.end method


# virtual methods
.method public getComponentData()Lcom/android/camera/data/data/ComponentData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->componentData:Lcom/android/camera/data/data/ComponentData;

    return-object v0
.end method

.method public getTextResource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->textResource:I

    return v0
.end method

.method public getTextResourceString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->textResourceString:Ljava/lang/String;

    return-object v0
.end method

.method public getTopResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->topResourceId:I

    return v0
.end method

.method public getTopSelectedAnimID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->topSelectedAnimID:I

    return v0
.end method

.method public isEnableClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->enableClick:Z

    return v0
.end method

.method public isShowRightAngleTag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isShowRightAngleTag:Z

    return v0
.end method

.method public isShowText()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isShowText:Z

    return v0
.end method

.method public isSwitchOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn:Z

    return v0
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->componentData:Lcom/android/camera/data/data/ComponentData;

    return-void
.end method

.method public setEnableClick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->enableClick:Z

    return-void
.end method

.method public setShowRightAngleTag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isShowRightAngleTag:Z

    return-void
.end method

.method public setShowText(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isShowText:Z

    return-void
.end method

.method public setSwitchOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->isSwitchOn:Z

    return-void
.end method

.method public setTextResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->textResource:I

    return-void
.end method

.method public setTextResourceString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->textResourceString:Ljava/lang/String;

    return-void
.end method

.method public setTopResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->topResourceId:I

    return-void
.end method

.method public setTopSelectedAnimID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;->topSelectedAnimID:I

    return-void
.end method
