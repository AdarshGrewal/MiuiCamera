.class public LOooO00o/OooO0O0/OooO0OO/OooO00o;
.super Ljava/lang/Object;
.source "CameraPerfLogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;
    }
.end annotation


# static fields
.field public static final OooO:I = -0x2

.field public static final OooO00o:Ljava/lang/String; = "OooO00o"

.field public static final OooO0O0:I = 0x0

.field public static final OooO0OO:I = 0x1

.field public static final OooO0Oo:I = 0x2

.field public static final OooO0o:I = 0x4

.field public static final OooO0o0:I = 0x3

.field public static final OooO0oO:I = 0x5

.field public static final OooO0oo:I = -0x1

.field public static final OooOO0:I = -0x3

.field public static final OooOO0O:J = 0x0L

.field public static OooOO0o:J = 0x0L

.field public static final OooOOO:J = 0x0L

.field public static OooOOO0:J = 0x0L

.field public static final OooOOOO:I = 0x6

.field public static final OooOOOo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooOOOo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO00o()V
    .locals 12

    .line 19
    sget-object v0, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooOOOo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 23
    iget-object v4, v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO00o:[J

    aget-wide v4, v4, v3

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_2
    if-eqz v3, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "[click, yuv return, algo, jpeg, save, total, image name]["

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v2

    :goto_3
    const-string v5, ","

    const/4 v6, 0x5

    if-ge v4, v6, :cond_3

    .line 26
    iget-object v6, v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO00o:[J

    add-int/lit8 v7, v4, 0x1

    aget-wide v8, v6, v7

    aget-wide v10, v6, v4

    sub-long/2addr v8, v10

    .line 27
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v4, v7

    goto :goto_3

    .line 28
    :cond_3
    iget-object v4, v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO00o:[J

    aget-wide v6, v4, v6

    aget-wide v8, v4, v2

    sub-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    iget-object v1, v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;)V

    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static OooO00o(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CAM_PERF]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized OooO00o(JIJLjava/lang/String;)V
    .locals 4

    const-class v0, LOooO00o/OooO0O0/OooO0OO/OooO00o;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooOOOo:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;

    const/4 v2, -0x2

    if-eq p2, v2, :cond_7

    const/4 v2, -0x1

    if-eq p2, v2, :cond_6

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 3
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const/4 v2, -0x3

    if-ne p2, v2, :cond_2

    .line 4
    :try_start_1
    new-instance p2, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;

    invoke-direct {p2}, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;-><init>()V

    .line 5
    iget-object p3, p2, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO00o:[J

    const/4 p4, 0x0

    sget-wide v1, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooOO0o:J

    aput-wide v1, p3, p4

    .line 6
    iget-object p3, p2, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO00o:[J

    const/4 p4, 0x1

    sget-wide v1, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooOOO0:J

    aput-wide v1, p3, p4

    .line 7
    sget-object p3, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooOOOo:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :cond_2
    if-eqz p5, :cond_3

    :try_start_2
    const-string p0, ""

    .line 9
    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    if-eqz v1, :cond_3

    iget-object p0, v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO0O0:Ljava/lang/String;

    if-nez p0, :cond_3

    .line 10
    iput-object p5, v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO0O0:Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    if-lez p2, :cond_4

    const/4 p0, 0x6

    if-ge p2, p0, :cond_4

    .line 11
    iget-object p0, v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO00o:[J

    aget-wide p0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_4

    .line 12
    iget-object p0, v1, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO00o:[J

    aput-wide p3, p0, p2

    :cond_4
    const/4 p0, 0x5

    if-ne p2, p0, :cond_5

    .line 13
    invoke-static {}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    :cond_5
    monitor-exit v0

    return-void

    .line 15
    :cond_6
    :try_start_3
    sput-wide p3, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooOO0o:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_7
    :try_start_4
    sput-wide p3, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooOOO0:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static OooO00o(Ljava/lang/String;)V
    .locals 1

    .line 33
    sget-object v0, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v0, p0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CAM_PERF]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static OooO00o(LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 32
    iget-object p0, p0, LOooO00o/OooO0O0/OooO0OO/OooO00o$OooO00o;->OooO00o:[J

    const/4 v0, 0x3

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static OooO0O0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CAM_PERF]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static OooO0OO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CAM_PERF]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
