.class public Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;
.super Ljava/lang/Object;
.source "ExtraSceneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpressInfo"
.end annotation


# static fields
.field public static final LOOP_BEGIN_FRAME:I = 0x1

.field public static final LOOP_END_FRAME:I = 0x2


# instance fields
.field public final synthetic a:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

.field public b:[I

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->a:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->b:[I

    .line 3
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->d:Z

    .line 5
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->e:I

    .line 6
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->f:Z

    return-void
.end method


# virtual methods
.method public getExpressIndex()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->b:[I

    return-object v0
.end method

.method public getExpressValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLoopStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->e:I

    return v0
.end method

.method public isLoopFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->d:Z

    return v0
.end method

.method public isPauseFrame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->f:Z

    return v0
.end method

.method public setExpressIndex([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->b:[I

    return-void
.end method

.method public setExpressValue(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLoopFrame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->d:Z

    return-void
.end method

.method public setLoopStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->e:I

    return-void
.end method

.method public setPauseStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->f:Z

    return-void
.end method
