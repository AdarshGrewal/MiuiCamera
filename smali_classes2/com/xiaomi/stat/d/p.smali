.class public Lcom/xiaomi/stat/d/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "netSpeed"

.field public static final b:Ljava/lang/String; = "net_speed_time_stamp"

.field public static final c:Ljava/lang/String; = "mi_stat_pref"

.field public static d:Landroid/content/SharedPreferences; = null

.field public static e:Landroid/content/SharedPreferences$Editor; = null

.field public static final f:Ljava/lang/String; = "imei1"

.field public static final g:Ljava/lang/String; = "imei2"

.field public static final h:Ljava/lang/String; = "meid"

.field public static final i:Ljava/lang/String; = "mac"

.field public static final j:Ljava/lang/String; = "serial"

.field public static final k:Ljava/lang/String; = "s_t"

.field public static final l:Ljava/lang/String; = "l_t"

.field public static final m:Ljava/lang/String; = "e_t"

.field public static final n:Ljava/lang/String; = "od_checked"

.field public static final o:Ljava/lang/String; = "od_v"

.field public static final p:Ljava/lang/String; = "resued_old_instanced_id"

.field public static final q:Ljava/lang/String; = "netSpeedTotalRxBytes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->o(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/xiaomi/stat/d/p;->d:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "imei1"

    const-string v1, ""

    .line 9
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->o(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/xiaomi/stat/d/p;->d:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;F)V
    .locals 1

    const-string v0, "netSpeed"

    .line 13
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;F)V

    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "s_t"

    .line 11
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "imei1"

    .line 10
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->o(Landroid/content/Context;)V

    .line 8
    sget-object p0, Lcom/xiaomi/stat/d/p;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "od_checked"

    .line 12
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->o(Landroid/content/Context;)V

    .line 6
    sget-object p0, Lcom/xiaomi/stat/d/p;->d:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->o(Landroid/content/Context;)V

    .line 8
    sget-object p0, Lcom/xiaomi/stat/d/p;->d:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "imei2"

    const-string v1, ""

    .line 9
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "l_t"

    .line 11
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "imei2"

    .line 10
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->o(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/xiaomi/stat/d/p;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->o(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/xiaomi/stat/d/p;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/xiaomi/stat/d/p;->o(Landroid/content/Context;)V

    .line 6
    sget-object p0, Lcom/xiaomi/stat/d/p;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "resued_old_instanced_id"

    .line 12
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "meid"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "e_t"

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "meid"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "mac"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "netSpeedTotalRxBytes"

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mac"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "serial"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "net_speed_time_stamp"

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "serial"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)J
    .locals 3

    const-string v0, "s_t"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "od_v"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)J
    .locals 3

    const-string v0, "l_t"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h(Landroid/content/Context;)J
    .locals 3

    const-string v0, "e_t"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "od_checked"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "od_v"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "resued_old_instanced_id"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static l(Landroid/content/Context;)F
    .locals 2

    const-string v0, "netSpeed"

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/xiaomi/stat/d/p;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/Context;)J
    .locals 3

    const-string v0, "netSpeedTotalRxBytes"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static n(Landroid/content/Context;)J
    .locals 3

    const-string v0, "net_speed_time_stamp"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/stat/d/p;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static o(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/stat/d/p;->e:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Lcom/xiaomi/stat/d/p;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/d/p;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_1

    const-string v1, "mi_stat_pref"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/stat/d/p;->d:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/stat/d/p;->e:Landroid/content/SharedPreferences$Editor;

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
