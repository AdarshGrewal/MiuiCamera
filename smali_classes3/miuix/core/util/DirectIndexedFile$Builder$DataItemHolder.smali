.class public Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataItemHolder"
.end annotation


# instance fields
.field public mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lmiuix/core/util/DirectIndexedFile$Builder;


# direct methods
.method public constructor <init>(Lmiuix/core/util/DirectIndexedFile$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->this$0:Lmiuix/core/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/core/util/DirectIndexedFile$Builder;Lmiuix/core/util/DirectIndexedFile$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;-><init>(Lmiuix/core/util/DirectIndexedFile$Builder;)V

    return-void
.end method

.method public static synthetic access$2300(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->put(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2900(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->size()I

    move-result p0

    return p0
.end method

.method public static synthetic access$4000(Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->getAll()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private getAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private put(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/core/util/DirectIndexedFile$Builder$DataItemHolder;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
