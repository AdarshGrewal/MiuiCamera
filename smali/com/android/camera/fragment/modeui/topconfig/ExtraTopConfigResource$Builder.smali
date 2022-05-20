.class public Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
.super Ljava/lang/Object;
.source "ExtraTopConfigResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->textResource:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->enableClick:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->topResourceId:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->topSelectedAnimID:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->textResource:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->textResourceString:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->isSwitchOn:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->isShowRightAngleTag:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->enableClick:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Lcom/android/camera/data/data/ComponentData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->componentData:Lcom/android/camera/data/data/ComponentData;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->isShowText:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;-><init>(Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$1;)V

    return-object v0
.end method

.method public setComponentData(Lcom/android/camera/data/data/ComponentData;)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->componentData:Lcom/android/camera/data/data/ComponentData;

    return-object p0
.end method

.method public setEnableClick(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->enableClick:Z

    return-object p0
.end method

.method public setShowRightAngleTag(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->isShowRightAngleTag:Z

    return-object p0
.end method

.method public setShowText(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->isShowText:Z

    return-object p0
.end method

.method public setSwitchOn(Z)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->isSwitchOn:Z

    return-object p0
.end method

.method public setTextResource(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->textResource:I

    return-object p0
.end method

.method public setTextResourceString(Ljava/lang/String;)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->textResourceString:Ljava/lang/String;

    return-object p0
.end method

.method public setTopResourceId(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->topResourceId:I

    return-object p0
.end method

.method public setTopSelectedAnimID(I)Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource$Builder;->topSelectedAnimID:I

    return-object p0
.end method
