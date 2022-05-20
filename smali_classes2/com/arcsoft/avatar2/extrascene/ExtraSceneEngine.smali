.class public Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;
.super Ljava/lang/Object;
.source "ExtraSceneEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "EmojiHelmet"

.field public static final B:Ljava/lang/String; = "AngelWings"

.field public static final C:Ljava/lang/String; = "ClownHat"

.field public static final D:Ljava/lang/String; = "MagicHat"

.field public static final E:Ljava/lang/String; = "AstronautHat"

.field public static final F:Ljava/lang/String; = "DogHat"

.field public static final G:Ljava/lang/String; = "PrincessHat"

.field public static final H:Ljava/lang/String; = "hairId"

.field public static final I:Ljava/lang/String; = "expId"

.field public static final J:Ljava/lang/String; = "blendshape"

.field public static final K:Ljava/lang/String; = "mask"

.field public static final L:I = 0x2

.field public static final M:I = 0x1

.field public static final N:I = 0x2

.field public static final O:I = 0x3

.field public static final a:Ljava/lang/String; = "ExtraSceneEngine"

.field public static final b:Ljava/lang/String; = "extraScene.xml"

.field public static final c:Ljava/lang/String; = "info"

.field public static final d:Ljava/lang/String; = "name"

.field public static final e:Ljava/lang/String; = "headwear"

.field public static final f:Ljava/lang/String; = "headwearcolor"

.field public static final g:Ljava/lang/String; = "expid"

.field public static final h:Ljava/lang/String; = "expvalue"

.field public static final i:Ljava/lang/String; = "outline"

.field public static final j:Ljava/lang/String; = "oldheadwear"

.field public static final k:Ljava/lang/String; = "newheadwear"

.field public static final l:Ljava/lang/String; = "expcheckid"

.field public static final m:Ljava/lang/String; = "expcheckvalue"

.field public static final n:Ljava/lang/String; = "oldtooth"

.field public static final o:Ljava/lang/String; = "newtooth"

.field public static final p:Ljava/lang/String; = "loopstyle"

.field public static final q:Ljava/lang/String; = "render"

.field public static final r:Ljava/lang/String; = "loop"

.field public static final s:Ljava/lang/String; = "random"

.field public static final t:Ljava/lang/String; = "pause"

.field public static final u:Ljava/lang/String; = "expidin"

.field public static final v:Ljava/lang/String; = "expidout"

.field public static final w:Ljava/lang/String; = "RabbitTeeth"

.field public static final x:Ljava/lang/String; = "RabbitEars"

.field public static final y:Ljava/lang/String; = "ChickHat"

.field public static final z:Ljava/lang/String; = "WizardHat"


# instance fields
.field public P:Ljava/lang/String;

.field public Q:Lcom/arcsoft/avatar2/AvatarEngine;

.field public R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

.field public S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

.field public T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public U:Ljava/lang/String;

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public aa:I

.field public ab:I

.field public ac:Ljava/util/Random;

.field public ad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    .line 3
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->T:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 5
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->W:I

    .line 6
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    .line 7
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Y:I

    .line 8
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Z:I

    .line 9
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    .line 10
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    .line 11
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ac:Ljava/util/Random;

    .line 12
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ad:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    .line 14
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->U:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    .line 16
    new-instance p2, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-direct {p2}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;-><init>()V

    iput-object p2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    .line 17
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->T:Ljava/util/ArrayList;

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "extraScene.xml"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->P:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a()V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ad:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 7

    :try_start_0
    const-string v0, "ExtraSceneEngine"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getXmlInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->P:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 52
    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_19

    const/4 v5, 0x2

    if-eq v0, v5, :cond_16

    const/4 v5, 0x3

    if-eq v0, v5, :cond_14

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "name"

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setName(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "headwear"

    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setHeadWear(I)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "outline"

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setNeedOutLine(Z)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "expid"

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    new-instance v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;-><init>(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V

    .line 62
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->setExpressIndex([I)V

    move-object v4, v0

    goto/16 :goto_2

    :cond_4
    const-string v0, "expvalue"

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "oldheadwear"

    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/"

    if-eqz v0, :cond_6

    .line 66
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->U:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setOldHeadWearPath(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "newheadwear"

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getRandom()I

    move-result v0

    if-lez v0, :cond_7

    .line 69
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 70
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->U:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setNewHeadWearPath(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "expcheckid"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExpCheckId([I)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "expcheckvalue"

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 74
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->b(Ljava/lang/String;)[F

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExpCheckValue([F)V

    goto/16 :goto_2

    :cond_a
    const-string v0, "oldtooth"

    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->U:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setOldToothPath(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v0, "newtooth"

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->U:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setNewToothPath(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "loopstyle"

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 80
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopType(I)V

    goto/16 :goto_2

    :cond_d
    const-string v0, "loop"

    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 82
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V

    goto/16 :goto_2

    :cond_e
    const-string v0, "headwearcolor"

    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setHeadWearColor(I)V

    goto/16 :goto_2

    :cond_f
    const-string v0, "random"

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 86
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setRandom(I)V

    goto/16 :goto_2

    :cond_10
    const-string v0, "pause"

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 88
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->b(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V

    goto :goto_2

    :cond_11
    const-string v0, "render"

    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 90
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->c(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V

    goto :goto_2

    :cond_12
    const-string v0, "expidin"

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 92
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExpIdInPut([I)V

    goto :goto_2

    :cond_13
    const-string v0, "expidout"

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 94
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExpIdOutPut([I)V

    goto :goto_2

    .line 95
    :cond_14
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {}, Lcom/arcsoft/avatar2/BackgroundInfo;->getXMLInfoTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 97
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->T:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const-string v0, ""

    goto :goto_1

    .line 98
    :cond_16
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "info"

    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 100
    new-instance v2, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-direct {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;-><init>()V

    move-object v3, v2

    :cond_17
    :goto_1
    move-object v2, v0

    .line 101
    :cond_18
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    .line 104
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_19
    :goto_3
    return-void
.end method

.method private a(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 30
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->m(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mCheckFrameCount = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "rabbitEars"

    invoke-static {v4, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    if-ge v0, v2, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 35
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 36
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 37
    :cond_2
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v4

    if-ne v4, v3, :cond_3

    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz v4, :cond_3

    .line 38
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v5

    const-string v6, "MiRabbitHat"

    invoke-interface {v4, v6, v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 39
    :cond_3
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 40
    invoke-direct {p0, v4, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    .line 41
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 42
    iget v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-lt v4, v5, :cond_4

    .line 43
    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v3, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 44
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    goto :goto_1

    .line 45
    :cond_4
    iget v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 46
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 47
    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;[F)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressValue()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ad:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHairMaskInfoList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    move v3, v2

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;

    .line 7
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    iget v5, v5, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHairStyleID:I

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->getHairId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 8
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ad:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 9
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 10
    array-length v3, v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, "] = "

    const-string v6, "set express["

    const-string v7, "expWeights"

    if-ne v3, v4, :cond_2

    .line 11
    aget v3, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, p2, v3

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_2
    aget v3, v0, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, p2, v3

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_2
    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ad:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;

    .line 16
    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->getExpId()I

    move-result v5

    aget v6, v0, v1

    if-ne v5, v6, :cond_3

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expid -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", HairInfo -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "setHairRenderParam"

    invoke-static {v5, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->getBlendShape()Z

    move-result v5

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->getMask()Z

    move-result v4

    invoke-virtual {v3, v5, v4}, Lcom/arcsoft/avatar2/AvatarEngine;->setHairRenderParam(ZZ)I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "rabbitEars"

    if-eqz p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 22
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new headwear path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewToothPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 27
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewToothPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setToothTexture(Ljava/lang/String;)I

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new tooth path = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewToothPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 134
    :goto_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getRandom()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 135
    :goto_1
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getRandom()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->U:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Tex_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "_acc.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setNewHeadWearPath(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V
    .locals 4

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 112
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 113
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 114
    invoke-virtual {p2, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->setExpressValue(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-le v2, p1, :cond_2

    :goto_1
    if-ge v0, v2, :cond_3

    .line 115
    invoke-virtual {p3, p2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExpressInfo(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {p3, p2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExpressInfo(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;)V

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V
    .locals 7

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "-"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "*"

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 120
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    .line 121
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "begin ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", end ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", num ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "expWeights"

    invoke-static {v4, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 126
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 127
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 128
    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v6

    aget v6, v6, v2

    if-ne v6, v3, :cond_2

    .line 129
    invoke-virtual {p2, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopBeginFrameIndex(I)V

    .line 130
    :cond_2
    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v6

    aget v6, v6, v2

    if-ne v6, v0, :cond_3

    const/4 v6, 0x2

    .line 131
    invoke-virtual {v5, v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->setLoopStatus(I)V

    .line 132
    invoke-virtual {p2, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopEndFrameIndex(I)V

    .line 133
    invoke-virtual {p2, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopNum(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)[I
    .locals 3

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ","

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 107
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 108
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 109
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    .line 4
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 6
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v3

    const-string v4, "RabbitEars"

    invoke-interface {v1, v4, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 7
    :cond_0
    iget v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    :goto_0
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 8
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v1

    array-length v1, v1

    if-ge v4, v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v2

    aget v2, v2, v4

    aget v2, v0, v2

    neg-float v2, v2

    aput v2, v0, v1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rabbitTeeth"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V
    .locals 5

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "expWeights"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 25
    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v4

    aget v4, v4, v1

    if-ne v4, p1, :cond_2

    const/4 p1, 0x1

    .line 26
    invoke-virtual {v3, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->setPauseStatus(Z)V

    .line 27
    invoke-virtual {p2, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setPauseIndex(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;)[F
    .locals 3

    .line 13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ","

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 15
    array-length v0, p1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 16
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 17
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private c(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[54] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x36

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [55] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x37

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_expweight"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->m(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v3, "[55] = "

    const/4 v4, 0x3

    const-string v5, "clownHat"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object p1

    aget p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 7
    iput v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    .line 8
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->W:I

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->W:I

    add-int/lit8 v6, p1, 0x1

    iput v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->W:I

    :goto_0
    iput v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->W:I

    :cond_2
    return-void

    .line 10
    :cond_3
    iput v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    return-void

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v3

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v4, :cond_5

    return-void

    .line 13
    :cond_5
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    .line 14
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckFrameCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    if-gt v0, v4, :cond_6

    return-void

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 18
    iput v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->W:I

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->W:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string v0, ""

    .line 21
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 22
    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    .line 23
    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Acc ->  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 26
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 28
    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v3

    .line 29
    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressValue()Ljava/util/ArrayList;

    move-result-object v2

    move v8, v6

    .line 30
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 31
    array-length v9, v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-string v11, "] = "

    const-string v12, "set express["

    if-ne v9, v10, :cond_a

    .line 32
    aget v9, v3, v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v0, v9

    .line 33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v3, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :cond_a
    aget v9, v3, v6

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v0, v9

    .line 35
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v3, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 36
    :cond_b
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    .line 37
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v7, :cond_c

    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz p1, :cond_c

    .line 38
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v0

    const-string v2, "ClownHat"

    invoke-interface {p1, v2, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 39
    :cond_c
    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    if-lt p1, v0, :cond_d

    .line 40
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 41
    iput v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    goto :goto_5

    .line 42
    :cond_d
    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 43
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V
    .locals 8

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;-><init>(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V

    const-string v1, ";"

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 47
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_7

    .line 48
    aget-object v3, p1, v2

    aget-object v4, p1, v2

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 49
    aget-object v4, p1, v2

    const-string v6, "hairId"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 50
    invoke-virtual {v0, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->setHairId(I)V

    goto :goto_3

    .line 51
    :cond_1
    aget-object v4, p1, v2

    const-string v7, "expId"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_2

    .line 52
    invoke-virtual {v0, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->setExpId(I)V

    goto :goto_3

    .line 53
    :cond_2
    aget-object v4, p1, v2

    const-string v7, "blendshape"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_4

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    .line 54
    :goto_1
    invoke-virtual {v0, v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->setBlendShape(Z)V

    goto :goto_3

    .line 55
    :cond_4
    aget-object v4, p1, v2

    const-string v7, "mask"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_6

    if-ne v3, v5, :cond_5

    goto :goto_2

    :cond_5
    move v5, v1

    .line 56
    :goto_2
    invoke-virtual {v0, v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->setMask(Z)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_7
    invoke-virtual {p2, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setHairMaskInfo(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;)V

    return-void
.end method

.method private d(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[54] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x36

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [55] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x37

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_expweight"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->m(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v4, :cond_1

    .line 5
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 6
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    return-void

    .line 7
    :cond_1
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    .line 9
    :cond_3
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    .line 10
    :goto_0
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    if-gt v0, v4, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 12
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 13
    invoke-direct {p0, v5, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    .line 14
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-ne v5, v3, :cond_5

    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz v5, :cond_5

    .line 15
    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v6

    const-string v7, "AngelWingsCap"

    invoke-interface {v5, v7, v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 16
    :cond_5
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-eq v5, v4, :cond_7

    .line 17
    iget v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-lt v5, v6, :cond_6

    .line 18
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 19
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    goto :goto_1

    .line 20
    :cond_6
    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 21
    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 22
    :cond_7
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private e(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientations()[F

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "emojiHelmet"

    if-eqz p1, :cond_2

    .line 2
    aget v3, p1, v0

    const/high16 v4, -0x3e900000    # -15.0f

    cmpg-float v3, v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    if-gez v3, :cond_0

    aget v3, p1, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const-string p1, "--- left---"

    .line 3
    invoke-static {v2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    .line 5
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    goto :goto_0

    .line 6
    :cond_0
    aget v3, p1, v0

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    aget p1, p1, v1

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1

    const-string p1, "--- right---"

    .line 7
    invoke-static {v2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    .line 9
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    goto :goto_0

    .line 10
    :cond_1
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    .line 11
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    .line 12
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCheckLeftFrameCount -> "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCheckRightFrameCount -> "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    const/4 v3, 0x3

    if-ge p1, v3, :cond_3

    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    if-lt p1, v3, :cond_4

    :cond_3
    move v1, v0

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check -> "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    return-void

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v3, :cond_6

    return-void

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ac:Ljava/util/Random;

    if-nez p1, :cond_7

    .line 18
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ac:Ljava/util/Random;

    .line 19
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "old left = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", old right = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_8
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ac:Ljava/util/Random;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getRandom()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "random = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    if-lt v0, v3, :cond_9

    .line 23
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    if-eq v0, p1, :cond_8

    .line 24
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setEmojiHelmetLeftRandomNum(I)V

    goto :goto_1

    .line 25
    :cond_9
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    if-lt v0, v3, :cond_8

    .line 26
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    if-eq v0, p1, :cond_8

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    if-eq v0, p1, :cond_8

    .line 27
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setEmojiHelmetRightRandomNum(I)V

    .line 28
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new left = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", new right = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    if-ge p1, v3, :cond_b

    iget p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    if-lt p1, v3, :cond_a

    goto :goto_2

    :cond_a
    const-string p1, ""

    goto :goto_3

    .line 30
    :cond_b
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tex_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetLeftRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getEmojiHelmetRightRandomNum()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_acc.png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    :goto_3
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 33
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 34
    :cond_d
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {p1, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    .line 35
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acc path = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_e
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz p1, :cond_f

    .line 38
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v0

    const-string v1, "EmojiHelmet"

    invoke-interface {p1, v1, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 39
    :cond_f
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    return-void
.end method

.method private f(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[54] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x36

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [55] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x37

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_expweight"

    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->m(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 6
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    return-void

    .line 7
    :cond_1
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v3, :cond_3

    return-void

    .line 9
    :cond_3
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    .line 10
    :goto_0
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    if-gt v0, v3, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 12
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 13
    invoke-direct {p0, v5, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    .line 14
    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v6

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz v6, :cond_5

    .line 15
    iget-object v7, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v7

    const-string v8, "ChickenHat"

    invoke-interface {v6, v8, v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 16
    :cond_5
    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v6

    if-eq v6, v3, :cond_8

    .line 17
    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getLoopStatus()I

    move-result v5

    const-string v6, "expWeights"

    if-ne v5, v1, :cond_6

    .line 18
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopCount()I

    move-result v5

    .line 19
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- loopCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v8}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v7, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 21
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopBeginFrameIndex()I

    move-result v1

    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mExtraSceneIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    .line 24
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void

    .line 25
    :cond_6
    iget v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v7, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-lt v5, v7, :cond_7

    const-string v1, "--- end ---"

    .line 26
    invoke-static {v6, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 28
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    .line 29
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 30
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Z:I

    goto :goto_1

    .line 31
    :cond_7
    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> mExtraSceneIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 34
    :cond_8
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private g(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    aget v0, v0, v3

    const v4, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v4

    const v5, 0x3e4ccccd    # 0.2f

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    aget v0, v0, v2

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    .line 3
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    .line 4
    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    aget v0, v0, v2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    aget v0, v0, v3

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    .line 6
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    .line 7
    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    goto :goto_0

    .line 8
    :cond_1
    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    .line 9
    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    .line 10
    :goto_0
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 11
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wizardHat"

    invoke-static {v5, v4}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 13
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 14
    invoke-direct {p0, v4, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    .line 15
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-ne v5, v2, :cond_5

    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz v5, :cond_5

    .line 16
    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v6

    const-string v7, "WizardHat"

    invoke-interface {v5, v7, v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 17
    :cond_5
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v5

    if-eq v5, v1, :cond_8

    .line 18
    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getLoopStatus()I

    move-result v1

    const/4 v4, 0x2

    const-string v5, "expWeights"

    if-ne v1, v4, :cond_6

    .line 19
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopCount()I

    move-result v1

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- loopCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 22
    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopBeginFrameIndex()I

    move-result v3

    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- mExtraSceneIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    add-int/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    .line 25
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void

    .line 26
    :cond_6
    iget v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-lt v1, v6, :cond_7

    const-string v1, "--- end ---"

    .line 27
    invoke-static {v5, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 29
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    .line 30
    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 31
    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Z:I

    .line 32
    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    .line 33
    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    goto :goto_3

    .line 34
    :cond_7
    iget v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> mExtraSceneIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 37
    :cond_8
    :goto_3
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private h(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->m(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[58] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x3a

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "check_expweight"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 5
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v3, :cond_3

    return-void

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 8
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 9
    invoke-direct {p0, v4, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    .line 10
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v4

    if-eq v4, v3, :cond_5

    .line 11
    iget v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-lt v4, v5, :cond_4

    .line 12
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    goto :goto_1

    .line 14
    :cond_4
    iget v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 15
    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private i(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientations()[F

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[2] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getOrientations()[F

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "astronautHat"

    invoke-static {v3, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    .line 3
    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto/16 :goto_5

    .line 4
    :cond_0
    aget v2, v1, v4

    const/high16 v5, 0x41700000    # 15.0f

    cmpl-float v2, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_1

    move v1, v6

    goto :goto_0

    .line 5
    :cond_1
    aget v1, v1, v4

    const/high16 v2, -0x3e900000    # -15.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    if-nez v1, :cond_5

    .line 6
    iget-object v2, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 8
    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_4
    return-void

    :cond_5
    if-ne v1, v6, :cond_6

    .line 9
    iget-object v2, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    .line 10
    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v2

    if-ne v2, v6, :cond_6

    return-void

    .line 11
    :cond_6
    iget-object v2, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v2

    if-ne v2, v3, :cond_7

    return-void

    .line 12
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    .line 13
    iget-object v7, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v7

    iget v8, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 14
    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressIndex()[I

    move-result-object v8

    .line 15
    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getExpressValue()Ljava/util/ArrayList;

    move-result-object v9

    move v10, v5

    .line 16
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    .line 17
    array-length v11, v8

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    const-string v13, "] = "

    const-string v14, "set express["

    const-string v15, "expWeights"

    if-ne v11, v12, :cond_8

    .line 18
    aget v11, v8, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v2, v11

    .line 19
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v8, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_8
    aget v11, v8, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v2, v11

    .line 21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v8, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    .line 22
    iget-object v8, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v8, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setHeadPitchStatus(I)V

    .line 23
    :cond_a
    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v1

    if-ne v1, v6, :cond_b

    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz v1, :cond_b

    .line 24
    iget-object v8, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v8}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v8

    const-string v9, "AstronautHelmet"

    invoke-interface {v1, v9, v8}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 25
    :cond_b
    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->isPauseFrame()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadPitchStatus()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 26
    invoke-direct/range {p0 .. p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->j(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    return-void

    .line 27
    :cond_c
    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadPitchStatus()I

    move-result v1

    if-ne v1, v6, :cond_d

    .line 28
    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 30
    iget-object v7, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 31
    iget-object v7, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v7, v1}, Lcom/arcsoft/avatar2/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    .line 32
    iget-object v7, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 33
    :cond_d
    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v1

    if-eq v1, v3, :cond_f

    .line 34
    iget v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v7, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-lt v1, v7, :cond_e

    .line 35
    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 36
    iput v5, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    goto :goto_4

    .line 37
    :cond_e
    iget v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 38
    iget-object v1, v0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    :cond_f
    :goto_4
    move-object/from16 v1, p1

    .line 39
    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    :cond_10
    :goto_5
    return-void
.end method

.method private j(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[48] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x30

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [49] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x31

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [50] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x32

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [51] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x33

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [52] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x34

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [54] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x36

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [55] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x37

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", [21] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    const/16 v2, 0x15

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check_expweight"

    .line 4
    invoke-static {v1, v0}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    .line 6
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 7
    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckValueList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    move v7, v0

    .line 8
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_2

    .line 9
    aget v3, v6, v7

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    const-string v9, ", exp["

    const-string v10, "["

    const-string v11, "check_astronautHat"

    const-string v12, "] = "

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v3

    aget v13, v4, v7

    aget v3, v3, v13

    aget v13, v6, v7

    cmpl-float v3, v3, v13

    if-lez v3, :cond_0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v6, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v8

    aget v9, v4, v7

    aget v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_0
    aget v3, v6, v7

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v3

    aget v8, v4, v7

    aget v3, v3, v8

    aget v8, v6, v7

    neg-float v8, v8

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v6, v7

    neg-float v8, v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v8

    aget v9, v4, v7

    aget v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v3, v5

    goto/16 :goto_1

    :cond_1
    const-string v3, "--- false ---"

    .line 13
    invoke-static {v11, v3}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    :cond_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    move v2, v0

    .line 14
    :goto_3
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    if-ltz v2, :cond_8

    .line 15
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 17
    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-void

    .line 18
    :cond_5
    iget v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Y:I

    if-ne v2, v3, :cond_6

    .line 19
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    goto :goto_4

    .line 20
    :cond_6
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Y:I

    .line 21
    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    .line 22
    :goto_4
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    const/4 v2, 0x4

    if-gt v0, v2, :cond_7

    return-void

    .line 23
    :cond_7
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new headwear path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private k(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[48] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x30

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [49] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x31

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [50] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x32

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [51] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x33

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [52] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x34

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [54] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x36

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [55] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x37

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [21] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x15

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", [58] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    const/16 v3, 0x3a

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "check_expweight"

    .line 8
    invoke-static {v2, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 11
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v4

    aget v4, v4, v1

    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v5

    aget v5, v5, v1

    aget v5, v0, v5

    aput v5, v0, v4

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    .line 13
    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdInPut()[I

    move-result-object v6

    aget v6, v6, v1

    aget v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v6

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpIdOutPut()[I

    move-result-object v5

    aget v5, v5, v1

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dogHat"

    .line 14
    invoke-static {v5, v4}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    :cond_2
    move v0, v3

    move v1, v0

    .line 16
    :goto_1
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 17
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 18
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckValueList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    move v6, v3

    .line 19
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 20
    aget v1, v5, v6

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    aget v8, v4, v6

    aget v1, v1, v8

    aget v8, v5, v6

    cmpl-float v1, v1, v8

    if-ltz v1, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    aget v1, v5, v6

    cmpg-float v1, v1, v7

    if-gez v1, :cond_4

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v1

    aget v7, v4, v6

    aget v1, v1, v7

    aget v7, v5, v6

    neg-float v7, v7

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getNewHeadWearPathList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object p1

    .line 23
    :goto_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getAccPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz v0, :cond_9

    .line 25
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v1

    const-string v3, "ShibaInuHat"

    invoke-interface {v0, v3, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 26
    :cond_9
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new headwear path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private l(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->m(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {p1, v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 5
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    return-void

    .line 6
    :cond_1
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v0

    if-ne v0, v3, :cond_3

    return-void

    .line 8
    :cond_3
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    .line 9
    :goto_0
    iget v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    if-gt v0, v3, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v0

    .line 11
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;

    .line 12
    invoke-direct {p0, v5, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;[F)V

    .line 13
    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v6

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ae:Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;

    if-eqz v6, :cond_5

    .line 14
    iget-object v7, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v7

    const-string v8, "PrincessHat"

    invoke-interface {v6, v8, v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;->onExtraSceneTrigger(Ljava/lang/String;I)V

    .line 15
    :cond_5
    iget-object v6, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v6}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExtraStatus()I

    move-result v6

    if-eq v6, v3, :cond_8

    .line 16
    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->getLoopStatus()I

    move-result v5

    const-string v6, "expWeights"

    if-ne v5, v1, :cond_6

    .line 17
    iget-object v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopCount()I

    move-result v5

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- loopCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v8}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v7, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopNum()I

    move-result v7

    if-ge v5, v7, :cond_6

    .line 20
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getLoopBeginFrameIndex()I

    move-result v1

    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- mExtraSceneIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    add-int/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    .line 23
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void

    .line 24
    :cond_6
    iget v5, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    iget-object v7, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v7}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpressInfoList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-lt v5, v7, :cond_7

    const-string v1, "--- end ---"

    .line 25
    invoke-static {v6, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 27
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    .line 28
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 29
    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Z:I

    goto :goto_1

    .line 30
    :cond_7
    iget v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--> mExtraSceneIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2, v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 33
    :cond_8
    :goto_1
    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->setExpWeights([F)V

    return-void
.end method

.method private m(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckValueList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    move v0, v1

    move v2, v0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 3
    iget-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckIdList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 4
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v4}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getExpCheckValueList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    move v5, v1

    .line 5
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 6
    aget v2, v4, v5

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    aget v7, v3, v5

    aget v2, v2, v7

    aget v7, v4, v5

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    aget v2, v4, v5

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_2

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;->getExpWeights()[F

    move-result-object v2

    aget v6, v3, v5

    aget v2, v2, v6

    aget v6, v4, v5

    neg-float v6, v6

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v2

    :cond_6
    :goto_4
    return v1
.end method


# virtual methods
.method public checkExtraScene(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V
    .locals 6

    const-string v0, "ExtraSceneEngine"

    if-nez p1, :cond_0

    const-string p1, "info is null"

    .line 1
    invoke-static {v0, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    if-nez v1, :cond_1

    const-string p1, "mConfigValue is null"

    .line 3
    invoke-static {v0, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConfigValue -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigValue"

    invoke-static {v2, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    iget v1, v1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    if-nez v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    .line 8
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    iget v4, v4, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearStyleID:I

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWear()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 9
    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWearColor()I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 10
    iget-object v4, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    iget v4, v4, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;->configHeadwearColorID:I

    invoke-virtual {v3}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getHeadWearColor()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 11
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    goto :goto_0

    .line 12
    :cond_4
    iput-object v3, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    .line 13
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    if-nez v1, :cond_6

    const-string p1, "mExtraSceneInfo is null"

    .line 14
    invoke-static {v0, p1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_6
    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "DogHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "ChickHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "ClownHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "RabbitTeeth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "RabbitEars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "AngelWings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "AstronautHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_7
    const-string v1, "MagicHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_8
    const-string v1, "PrincessHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_9
    const-string v1, "WizardHat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_a
    const-string v1, "EmojiHelmet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x7

    :cond_7
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 16
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->l(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 17
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->k(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 18
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->i(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 19
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->e(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 20
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->g(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 21
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->f(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 22
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->a(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 23
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->b(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 24
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->h(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 25
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->c(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    goto :goto_2

    .line 26
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->d(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarProcessInfo;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b20b3cd -> :sswitch_a
        -0x1faf86f0 -> :sswitch_9
        -0x1514a3ae -> :sswitch_8
        -0x502632 -> :sswitch_7
        0x548caa -> :sswitch_6
        0x23c29e67 -> :sswitch_5
        0x2b7a7f37 -> :sswitch_4
        0x44aa696e -> :sswitch_3
        0x4539b2fe -> :sswitch_2
        0x66487f0f -> :sswitch_1
        0x7a55a7df -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resetExtraScene()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->W:I

    .line 2
    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->X:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Y:I

    .line 4
    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->V:I

    .line 5
    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->aa:I

    .line 6
    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ab:I

    .line 7
    iput v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Z:I

    .line 8
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldToothPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldToothPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setToothTexture(Ljava/lang/String;)I

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    iget-object v2, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setHeadWearTexture(Ljava/lang/String;)I

    .line 13
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->getOldHeadWearPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setAccPath(Ljava/lang/String;)V

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setIsOldHeadWearAcc(Z)V

    .line 15
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setExtraStatus(I)V

    .line 16
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setLoopCount(I)V

    .line 17
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setEmojiHelmetLeftRandomNum(I)V

    .line 18
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v2}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setEmojiHelmetRightRandomNum(I)V

    .line 19
    iget-object v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-virtual {v1, v0}, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;->setHeadPitchStatus(I)V

    .line 20
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ad:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    invoke-virtual {v0, v2, v2}, Lcom/arcsoft/avatar2/AvatarEngine;->setHairRenderParam(ZZ)I

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    :cond_5
    :goto_0
    return-void
.end method

.method public setAvatarEngine(Lcom/arcsoft/avatar2/AvatarEngine;)V
    .locals 2

    const-string v0, "ExtraSceneEngine"

    const-string v1, "-- setAvatarEngine --"

    .line 1
    invoke-static {v0, v1}, Lcom/arcsoft/avatar2/util/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->Q:Lcom/arcsoft/avatar2/AvatarEngine;

    .line 3
    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->R:Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;

    invoke-virtual {p1, v0}, Lcom/arcsoft/avatar2/AvatarEngine;->getConfigValue(Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigValue;)V

    .line 4
    iget-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->ad:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine;->S:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    return-void
.end method
