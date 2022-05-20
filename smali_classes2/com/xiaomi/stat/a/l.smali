.class public Lcom/xiaomi/stat/a/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/a/l$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/xiaomi/stat/aj;

.field public e:J

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/stat/a/l;
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_dau"

    .line 2
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_basic"

    .line 3
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    .line 4
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 6
    new-instance v1, Lcom/xiaomi/stat/aj;

    invoke-direct {v1}, Lcom/xiaomi/stat/aj;-><init>()V

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/b;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Lcom/xiaomi/stat/b;->e(Z)V

    :cond_0
    const-string v3, "fo"

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ia"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "i1"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ib"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "i2"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "md"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ii"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mcm"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mcs"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bm"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "bs"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aa"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ai"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {v2}, Lcom/xiaomi/stat/d/e;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "od"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {v2}, Lcom/xiaomi/stat/b/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oa"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v2}, Lcom/xiaomi/stat/b/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "va"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 28
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(I)Lcom/xiaomi/stat/a/l;
    .locals 3

    .line 83
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_app_update"

    .line 84
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_basic"

    .line 85
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    .line 86
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 88
    new-instance v1, Lcom/xiaomi/stat/aj;

    invoke-direct {v1}, Lcom/xiaomi/stat/aj;-><init>()V

    const-string v2, "pvr"

    .line 89
    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 90
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 91
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(IIJJ)Lcom/xiaomi/stat/a/l;
    .locals 3

    .line 144
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_page_monitor"

    .line 145
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_basic"

    .line 146
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    .line 147
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 149
    new-instance v1, Lcom/xiaomi/stat/aj;

    invoke-direct {v1}, Lcom/xiaomi/stat/aj;-><init>()V

    const-string v2, "rc"

    .line 150
    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    const-string p0, "pc"

    .line 151
    invoke-virtual {v1, p0, p1}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    const-string p0, "sts"

    .line 152
    invoke-virtual {v1, p0, p2, p3}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    const-string p0, "ets"

    .line 153
    invoke-virtual {v1, p0, p4, p5}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    .line 154
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 155
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/HttpEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 5

    .line 102
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_net_monitor"

    .line 103
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_network"

    .line 104
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    .line 105
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 107
    new-instance v1, Lcom/xiaomi/stat/aj;

    invoke-direct {v1}, Lcom/xiaomi/stat/aj;-><init>()V

    .line 108
    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ur"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getTimeCost()J

    move-result-wide v2

    const-string v4, "dt"

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    .line 110
    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getResponseCode()I

    move-result v2

    const-string v3, "rc"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getNetFlow()J

    move-result-wide v2

    const-string v4, "nf"

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    .line 112
    invoke-virtual {p0}, Lcom/xiaomi/stat/HttpEvent;->getExceptionName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ecn"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 114
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 115
    invoke-static {v0, p1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/MiStatParams;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 3

    .line 75
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "profile_set"

    .line 76
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 78
    new-instance v1, Lcom/xiaomi/stat/aj;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/aj;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 79
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    xor-int/lit8 p0, p1, 0x1

    .line 80
    iput-boolean p0, v0, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 81
    iput-boolean p0, v0, Lcom/xiaomi/stat/a/l;->g:Z

    .line 82
    :goto_0
    invoke-static {v0, p2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/NetAvailableEvent;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 5

    .line 116
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_net_event"

    .line 117
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_net_available"

    .line 118
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    .line 119
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 121
    new-instance v1, Lcom/xiaomi/stat/aj;

    invoke-direct {v1}, Lcom/xiaomi/stat/aj;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getFlag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fg"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getResponseCode()I

    move-result v2

    const-string v3, "rsc"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getStatusCode()I

    move-result v2

    const-string v3, "sc"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getException()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ec"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getResultType()I

    move-result v2

    const-string v3, "rt"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getRequestStartTime()J

    move-result-wide v2

    const-string v4, "rst"

    invoke-virtual {v1, v4, v2, v3}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    .line 128
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    invoke-static {v2}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "UNKNOWN"

    :goto_0
    const-string v4, "n"

    invoke-virtual {v1, v4, v3}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 130
    invoke-static {v2}, Lcom/xiaomi/stat/d/p;->l(Landroid/content/Context;)F

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 131
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getRetryCount()I

    move-result v2

    const-string v3, "rc"

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {p0}, Lcom/xiaomi/stat/NetAvailableEvent;->getExt()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ext"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 135
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 136
    invoke-static {v0, p1}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/aj;)Lcom/xiaomi/stat/a/l;
    .locals 3

    .line 137
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_delete_event"

    .line 138
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_basic"

    .line 139
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    .line 140
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 142
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 143
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 4

    .line 92
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "mistat_signout"

    goto :goto_0

    :cond_0
    const-string v2, "mistat_signin"

    .line 94
    :goto_0
    iput-object v2, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v2, "mistat_basic"

    .line 95
    iput-object v2, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v2, "track_signin"

    .line 96
    iput-object v2, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 98
    new-instance v2, Lcom/xiaomi/stat/aj;

    invoke-direct {v2}, Lcom/xiaomi/stat/aj;-><init>()V

    if-nez v1, :cond_1

    const-string v1, "ud"

    .line 99
    invoke-virtual {v2, v1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    iput-object v2, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 101
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;JJ)Lcom/xiaomi/stat/a/l;
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 35
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;JJLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 8

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    move-object v7, p6

    .line 36
    invoke-static/range {v0 .. v7}, Lcom/xiaomi/stat/a/l;->a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;JJZLcom/xiaomi/stat/MiStatParams;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 3

    .line 37
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_pa"

    .line 38
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v1, "mistat_basic"

    goto :goto_0

    :cond_0
    const-string v1, "mistat_user_page"

    .line 39
    :goto_0
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    .line 40
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 42
    new-instance v1, Lcom/xiaomi/stat/aj;

    invoke-direct {v1, p6}, Lcom/xiaomi/stat/aj;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    const-string p6, "pg"

    .line 43
    invoke-virtual {v1, p6, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bt"

    .line 44
    invoke-virtual {v1, p0, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    const-string p0, "et"

    .line 45
    invoke-virtual {v1, p0, p3, p4}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    .line 46
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 47
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    if-nez p5, :cond_1

    .line 48
    invoke-static {v0, p7}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;Ljava/lang/String;Z)Lcom/xiaomi/stat/a/l;
    .locals 1

    .line 49
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 50
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    .line 51
    iput-object p1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string p0, "track"

    .line 52
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 54
    new-instance p0, Lcom/xiaomi/stat/aj;

    invoke-direct {p0, p2}, Lcom/xiaomi/stat/aj;-><init>(Lcom/xiaomi/stat/MiStatParams;)V

    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 55
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    xor-int/lit8 p0, p4, 0x1

    .line 56
    iput-boolean p0, v0, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 57
    iput-boolean p0, v0, Lcom/xiaomi/stat/a/l;->g:Z

    .line 58
    :goto_0
    invoke-static {v0, p3}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 3

    .line 156
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    .line 157
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string p0, "mistat_plain_text"

    .line 158
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string p0, "track"

    .line 159
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 161
    new-instance p0, Lcom/xiaomi/stat/aj;

    invoke-direct {p0}, Lcom/xiaomi/stat/aj;-><init>()V

    const-string v1, "ve"

    .line 162
    invoke-virtual {p0, v1, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput-object p0, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    .line 164
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 165
    invoke-static {v0, p2}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;ZLjava/lang/String;)Lcom/xiaomi/stat/a/l;
    .locals 3

    .line 59
    new-instance v0, Lcom/xiaomi/stat/a/l;

    invoke-direct {v0}, Lcom/xiaomi/stat/a/l;-><init>()V

    const-string v1, "mistat_app_exception"

    .line 60
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v1, "mistat_crash"

    .line 61
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v1, "track"

    .line 62
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/stat/a/l;->e:J

    .line 64
    new-instance v1, Lcom/xiaomi/stat/aj;

    invoke-direct {v1}, Lcom/xiaomi/stat/aj;-><init>()V

    .line 65
    iput-object v1, v0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    const-string v2, "ek"

    .line 66
    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "et"

    .line 67
    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/stat/MiStatParams;->putInt(Ljava/lang/String;I)V

    .line 68
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 69
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 70
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sk"

    .line 71
    invoke-virtual {v1, p2, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "em"

    invoke-virtual {v1, p1, p0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;)V

    .line 74
    invoke-static {v0, p3}, Lcom/xiaomi/stat/a/l;->a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/xiaomi/stat/a/l;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/xiaomi/stat/a/l;->g:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/xiaomi/stat/a/l;->g:Z

    :goto_0
    return-void
.end method

.method public static a(Lcom/xiaomi/stat/a/l;Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iput-object p1, p0, Lcom/xiaomi/stat/a/l;->f:Ljava/lang/String;

    .line 34
    iget-object p0, p0, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    const-string v0, "mi_sai"

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
