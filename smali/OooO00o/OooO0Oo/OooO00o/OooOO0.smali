.class public LOooO00o/OooO0Oo/OooO00o/OooOO0;
.super Ljava/lang/Object;
.source "SensitiveFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final OooO00o:J = 0x1L

.field public static final OooO0O0:Ljava/lang/String; = "/data/data/com.android.camera/sensi_words"

.field public static final OooO0OO:Ljava/lang/String; = "/data/data/com.android.camera/"

.field public static OooO0Oo:LOooO00o/OooO0Oo/OooO00o/OooOO0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized OooO00o()LOooO00o/OooO0Oo/OooO00o/OooOO0;
    .locals 2

    const-class v0, LOooO00o/OooO0Oo/OooO00o/OooOO0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO0Oo:LOooO00o/OooO0Oo/OooO00o/OooOO0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, LOooO00o/OooO0Oo/OooO00o/OooOO0;

    invoke-direct {v1}, LOooO00o/OooO0Oo/OooO00o/OooOO0;-><init>()V

    sput-object v1, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO0Oo:LOooO00o/OooO0Oo/OooO00o/OooOO0;

    .line 3
    :cond_0
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooOO0;->OooO0Oo:LOooO00o/OooO0Oo/OooO00o/OooOO0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static OooO00o(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method
