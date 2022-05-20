.class public Lcs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Lcs; = null

.field public static final b:Lcs;

.field public static volatile c:Z = false

.field public static volatile d:Lcs;


# instance fields
.field public final e:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcs;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcs;-><init>([B)V

    sput-object v0, Lcs;->b:Lcs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcs;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcs;->e:Ljava/util/Map;

    return-void
.end method

.method public static OooO00o()Lcs;
    .locals 2

    sget-object v0, Lcs;->d:Lcs;

    if-nez v0, :cond_1

    const-class v1, Lcs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcs;->d:Lcs;

    if-nez v0, :cond_0

    sget-object v0, Lcs;->b:Lcs;

    sput-object v0, Lcs;->d:Lcs;

    .line 3
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public OooO00o(Leh;I)Lcq;
    .locals 2

    iget-object v0, p0, Lcs;->e:Ljava/util/Map;

    new-instance v1, Lcr;

    .line 1
    invoke-direct {v1, p1, p2}, Lcr;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcq;

    return-object p1
.end method
