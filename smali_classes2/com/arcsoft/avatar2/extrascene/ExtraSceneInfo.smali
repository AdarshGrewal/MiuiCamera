.class public Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;
.super Ljava/lang/Object;
.source "ExtraSceneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;,
        Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;
    }
.end annotation


# static fields
.field public static final ANGEL_WINGS_CAP:Ljava/lang/String; = "AngelWingsCap"

.field public static final ASTRONAUT_HELMET:Ljava/lang/String; = "AstronautHelmet"

.field public static final CHICKEN_HAT:Ljava/lang/String; = "ChickenHat"

.field public static final CLOWN_HAT:Ljava/lang/String; = "ClownHat"

.field public static final EMOJI_HELMET:Ljava/lang/String; = "EmojiHelmet"

.field public static final EXTRA_ANGELWINGS_NAME:Ljava/lang/String; = "AngelWings"

.field public static final EXTRA_CLOWNHAT_NAME:Ljava/lang/String; = "ClownHat"

.field public static final EXTRA_RABBITTEETH_NAME:Ljava/lang/String; = "RabbitTeeth"

.field public static final EXTRA_STATUS_AGAIN:I = 0x4

.field public static final EXTRA_STATUS_BEGIN:I = 0x1

.field public static final EXTRA_STATUS_END:I = 0x3

.field public static final EXTRA_STATUS_RUN:I = 0x2

.field public static final HEAD_PITCH_STATUS_DOWN:I = 0x2

.field public static final HEAD_PITCH_STATUS_NORMAL:I = 0x0

.field public static final HEAD_PITCH_STATUS_UP:I = 0x1

.field public static final LOOP_LAST_EXP_ID_STATUS:I = 0x2

.field public static final LOOP_NORAML_STATUS:I = 0x1

.field public static final LOOP_ONCE_STATUS:I = 0x3

.field public static final MI_RABBIT_HAT:Ljava/lang/String; = "MiRabbitHat"

.field public static final PRINCESS_HAT:Ljava/lang/String; = "PrincessHat"

.field public static final RABBIT_EARS:Ljava/lang/String; = "RabbitEars"

.field public static final SHIBAINU_HAT:Ljava/lang/String; = "ShibaInuHat"

.field public static final WIZARD_HAT:Ljava/lang/String; = "WizardHat"


# instance fields
.field public A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public B:[I

.field public C:[I

.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Z

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->a:Ljava/lang/String;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->b:I

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->c:I

    .line 5
    iput-boolean v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->d:Z

    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    .line 7
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->f:I

    .line 8
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->g:Ljava/lang/String;

    .line 9
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->i:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->j:Ljava/lang/String;

    .line 12
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    .line 13
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    .line 14
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->m:I

    const/4 v4, 0x1

    .line 15
    iput v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->n:I

    .line 16
    iput-boolean v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->o:Z

    .line 17
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->p:I

    .line 18
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->q:I

    .line 19
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->r:I

    .line 20
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->s:I

    .line 21
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->t:I

    .line 22
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->u:I

    .line 23
    iput v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->v:I

    .line 24
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->w:I

    .line 25
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->x:I

    .line 26
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->y:I

    .line 27
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->z:Ljava/lang/String;

    .line 28
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    .line 29
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->B:[I

    .line 30
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->C:[I

    return-void
.end method


# virtual methods
.method public getAccPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->f:I

    return v0
.end method

.method public getEmojiHelmetLeftRandomNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->u:I

    return v0
.end method

.method public getEmojiHelmetRightRandomNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->v:I

    return v0
.end method

.method public getExpCheckIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpCheckValueList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExpCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->c:I

    return v0
.end method

.method public getExpIdInPut()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->B:[I

    return-object v0
.end method

.method public getExpIdOutPut()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->C:[I

    return-object v0
.end method

.method public getExpressInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->n:I

    return v0
.end method

.method public getHairMaskInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHeadPitchStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->x:I

    return v0
.end method

.method public getHeadWear()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->b:I

    return v0
.end method

.method public getHeadWearColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->p:I

    return v0
.end method

.method public getLoopBeginFrameIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->q:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->s:I

    return v0
.end method

.method public getLoopEndFrameIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->r:I

    return v0
.end method

.method public getLoopNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->t:I

    return v0
.end method

.method public getLoopType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->m:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getNewHeadWearPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNewToothPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getOldHeadWearPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getOldToothPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->y:I

    return v0
.end method

.method public getRandom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->w:I

    return v0
.end method

.method public isNeedOutLine()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->d:Z

    return v0
.end method

.method public isOldHeadWearAcc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->o:Z

    return v0
.end method

.method public setAccPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->z:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->f:I

    return-void
.end method

.method public setEmojiHelmetLeftRandomNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->u:I

    return-void
.end method

.method public setEmojiHelmetRightRandomNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->v:I

    return-void
.end method

.method public setExpCheckId([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExpCheckValue([F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExpCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->c:I

    return-void
.end method

.method public setExpIdInPut([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->B:[I

    return-void
.end method

.method public setExpIdOutPut([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->C:[I

    return-void
.end method

.method public setExpressInfo(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtraStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->n:I

    return-void
.end method

.method public setHairMaskInfo(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHeadPitchStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->x:I

    return-void
.end method

.method public setHeadWear(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->b:I

    return-void
.end method

.method public setHeadWearColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->p:I

    return-void
.end method

.method public setIsOldHeadWearAcc(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->o:Z

    return-void
.end method

.method public setLoopBeginFrameIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->q:I

    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->s:I

    return-void
.end method

.method public setLoopEndFrameIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->r:I

    return-void
.end method

.method public setLoopNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->t:I

    return-void
.end method

.method public setLoopType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->m:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setNeedOutLine(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->d:Z

    return-void
.end method

.method public setNewHeadWearPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNewToothPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setOldHeadWearPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setOldToothPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setPauseIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->y:I

    return-void
.end method

.method public setRandom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->w:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headWear = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedOutLine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExpressIndex = , mExpressValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
