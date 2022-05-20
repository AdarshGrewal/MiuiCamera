.class public Lcom/google/lens/sdk/LensApi;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;,
        Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;,
        Lcom/google/lens/sdk/LensApi$LensLaunchStatus;,
        Lcom/google/lens/sdk/LensApi$LensFeature;,
        Lcom/google/lens/sdk/LensApi$LensAvailabilityStatus;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final synthetic b:I


# instance fields
.field public final c:Lal;

.field public final d:Laq;

.field public final e:Landroid/app/KeyguardManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "googleapp://lens"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/lens/sdk/LensApi;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "keyguard"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 3
    new-instance v0, Lal;

    invoke-direct {v0, p1}, Lal;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    new-instance v1, Laq;

    .line 4
    invoke-direct {v1, p1, v0}, Laq;-><init>(Landroid/content/Context;Lal;)V

    iput-object v1, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    return-void
.end method

.method private final a(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 8
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p3, 0x40

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Cannot start Lens when device is locked with Android "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "LensApi"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 11
    invoke-interface {p2, p1}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance v0, Lbp;

    invoke-direct {v0, p3, p2}, Lbp;-><init>(Ljava/lang/Runnable;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V

    iget-object p2, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 13
    invoke-virtual {p2, p1, v0}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    return-void

    .line 14
    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 15
    invoke-interface {p2, p1}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :cond_3
    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    iget-object v0, v0, Lal;->f:Lbi;

    iget-object v0, v0, Lbi;->c:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const/4 v1, -0x1

    const-string v3, "\\."

    .line 2
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length v1, v0

    array-length v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    .line 5
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 6
    aget-object v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v5, v6, :cond_1

    if-gt v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    return v2

    .line 7
    :cond_2
    array-length v0, v0

    array-length p1, p1

    if-ge v0, p1, :cond_3

    return v2

    :cond_3
    return v3

    :cond_4
    return v2
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 44
    invoke-static {}, Leb;->OooO00o()V

    iget-object v1, v0, Laq;->a:Las;

    .line 45
    invoke-interface {v1}, Las;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 46
    sget-object v1, Lo;->c:Lo;

    .line 47
    invoke-virtual {v1}, Lde;->OooO0oo()Lda;

    move-result-object v1

    check-cast v1, Ln;

    .line 48
    sget v3, Lm;->cI:I

    iget-boolean v4, v1, Lda;->c:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1}, Ldb;->b()V

    iput-boolean v2, v1, Lda;->c:Z

    .line 50
    :goto_0
    iget-object v4, v1, Lda;->b:Lde;

    .line 51
    check-cast v4, Lo;

    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_1

    iput v5, v4, Lo;->b:I

    iget v3, v4, Lo;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v4, Lo;->a:I

    .line 52
    invoke-virtual {v1}, Lda;->OooO0O0()Lde;

    move-result-object v1

    check-cast v1, Lo;

    :try_start_0
    iget-object v0, v0, Laq;->a:Las;

    .line 53
    invoke-virtual {v1}, Lbu;->OooO0oO()[B

    move-result-object v1

    .line 54
    invoke-static {}, Leb;->OooO00o()V

    move-object v3, v0

    check-cast v3, Lba;

    .line 55
    invoke-virtual {v3}, Lba;->c()Z

    move-result v3

    const-string v4, "Attempted to use lensServiceSession before ready."

    invoke-static {v3, v4}, Leb;->OooO00o(ZLjava/lang/String;)V

    check-cast v0, Lba;

    iget-object v0, v0, Lba;->g:Lg;

    .line 56
    invoke-static {v0}, Leb;->OooO00o(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lg;->OooO00o([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v1, "LensServiceBridge"

    const-string v3, "Unable to send prewarm signal."

    .line 57
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 58
    throw p1

    .line 59
    :cond_2
    :goto_2
    new-instance v0, Landroid/content/Intent;

    .line 60
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/google/lens/sdk/LensApi;->a:Landroid/net/Uri;

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Lbs;)V
    .locals 8

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iget-object v6, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    new-instance v7, Lbm;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    .line 41
    invoke-direct/range {v0 .. v5}, Lbm;-><init>(Lcom/google/lens/sdk/LensApi;Lbs;JLandroid/app/Activity;)V

    .line 42
    invoke-static {}, Leb;->OooO00o()V

    new-instance p1, Lao;

    .line 43
    invoke-direct {p1, v6, v7}, Lao;-><init>(Laq;Lap;)V

    invoke-virtual {v6, p1}, Laq;->OooO00o(Lap;)V

    return-void
.end method

.method public final a(Lbs;)V
    .locals 5

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 64
    invoke-virtual {v0}, Laq;->OooO0OO()Lz;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbs;->OooO00o(Lz;)Landroid/os/Bundle;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Laq;->OooO00o(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 66
    invoke-virtual {v0}, Laq;->OooO0OO()Lz;

    invoke-virtual {p1}, Lbs;->OooO0O0()Landroid/os/Bundle;

    move-result-object p1

    .line 67
    invoke-static {}, Leb;->OooO00o()V

    iget-object v1, v0, Laq;->a:Las;

    .line 68
    invoke-interface {v1}, Las;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    sget-object v1, Lo;->c:Lo;

    .line 70
    invoke-virtual {v1}, Lde;->OooO0oo()Lda;

    move-result-object v1

    check-cast v1, Ln;

    .line 71
    sget v2, Lm;->cM:I

    iget-boolean v3, v1, Lda;->c:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Ldb;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lda;->c:Z

    .line 73
    :goto_0
    iget-object v3, v1, Lda;->b:Lde;

    .line 74
    check-cast v3, Lo;

    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_1

    iput v4, v3, Lo;->b:I

    iget v2, v3, Lo;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v3, Lo;->a:I

    .line 75
    invoke-virtual {v1}, Lda;->OooO0O0()Lde;

    move-result-object v1

    check-cast v1, Lo;

    new-instance v2, Lk;

    .line 76
    invoke-direct {v2, p1}, Lk;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p1, v0, Laq;->a:Las;

    .line 77
    invoke-virtual {v1}, Lbu;->OooO0oO()[B

    move-result-object v1

    .line 78
    invoke-interface {p1, v1, v2}, Las;->OooO0O0([BLk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, v0, Laq;->a:Las;

    .line 79
    invoke-interface {p1}, Las;->a()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string v0, "LensServiceBridge"

    const-string v1, "Failed to start Lens"

    .line 80
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 81
    throw p1

    :cond_2
    :goto_2
    const-string p1, "LensApi"

    const-string v0, "Failed to start lens."

    .line 82
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Lbs;)Z
    .locals 3

    const-string v0, "LensApi"

    if-nez p1, :cond_0

    const-string v1, "launchLensActivityWithBitmap: bitmap should not be null."

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 17
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string p1, "Cannot start Lens with Bitmap when device is locked."

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 19
    invoke-virtual {v0}, Laq;->OooO0oO()I

    move-result v0

    sget v1, Lbh;->b:I

    if-ne v0, v1, :cond_2

    .line 20
    invoke-virtual {p2}, Lbs;->OooO00o()Lbr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lbr;->OooO00o(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Lbr;->OooO00o()Lbs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/lens/sdk/LensApi;->a(Lbs;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public final a(Lbs;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 21
    invoke-virtual {v0}, Laq;->OooO0o()I

    move-result v0

    sget v1, Lbh;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 22
    invoke-virtual {v0}, Laq;->OooO0OO()Lz;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbs;->OooO00o(Lz;)Landroid/os/Bundle;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Laq;->OooO00o(Landroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 24
    invoke-virtual {v0}, Laq;->OooO0OO()Lz;

    invoke-virtual {p1}, Lbs;->OooO0O0()Landroid/os/Bundle;

    move-result-object p1

    .line 25
    invoke-static {}, Leb;->OooO00o()V

    iput-object p2, v0, Laq;->b:Lcom/google/lens/sdk/PendingIntentConsumer;

    iget-object p2, v0, Laq;->a:Las;

    .line 26
    invoke-interface {p2}, Las;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 27
    sget-object p2, Lo;->c:Lo;

    .line 28
    invoke-virtual {p2}, Lde;->OooO0oo()Lda;

    move-result-object p2

    check-cast p2, Ln;

    .line 29
    sget v1, Lm;->cN:I

    iget-boolean v3, p2, Lda;->c:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Ldb;->b()V

    iput-boolean v2, p2, Lda;->c:Z

    .line 31
    :goto_0
    iget-object v3, p2, Lda;->b:Lde;

    .line 32
    check-cast v3, Lo;

    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_1

    iput v4, v3, Lo;->b:I

    iget v1, v3, Lo;->a:I

    const/4 v4, 0x1

    or-int/2addr v1, v4

    iput v1, v3, Lo;->a:I

    .line 33
    invoke-virtual {p2}, Lda;->OooO0O0()Lde;

    move-result-object p2

    check-cast p2, Lo;

    new-instance v1, Lk;

    .line 34
    invoke-direct {v1, p1}, Lk;-><init>(Landroid/os/Parcelable;)V

    :try_start_0
    iget-object p1, v0, Laq;->a:Las;

    .line 35
    invoke-virtual {p2}, Lbu;->OooO0oO()[B

    move-result-object p2

    .line 36
    invoke-interface {p1, p2, v1}, Las;->OooO0O0([BLk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "LensServiceBridge"

    const-string v0, "Failed to send Lens service client event"

    .line 37
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 38
    throw p1

    :cond_2
    :goto_2
    const-string p1, "LensApi"

    const-string p2, "Failed to request pending intent."

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2
.end method

.method public checkArStickersAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    new-instance v1, Lbq;

    const/4 v2, 0x1

    .line 1
    invoke-direct {v1, p1, v2}, Lbq;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V

    invoke-virtual {v0, v1}, Lal;->OooO00o(Lai;)V

    return-void
.end method

.method public checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-interface {p1, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "8.3"

    .line 4
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 5
    invoke-interface {p1, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    new-instance v1, Lbq;

    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lbq;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V

    invoke-virtual {v0, v1}, Lal;->OooO00o(Lai;)V

    return-void
.end method

.method public checkPendingIntentAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-interface {p1, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "9.72"

    .line 4
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 5
    invoke-interface {p1, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    new-instance v1, Lbo;

    .line 6
    invoke-direct {v1, p1}, Lbo;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    .line 7
    invoke-static {}, Leb;->OooO00o()V

    new-instance p1, Lan;

    .line 8
    invoke-direct {p1, v0, v1}, Lan;-><init>(Laq;Lap;)V

    invoke-virtual {v0, p1}, Laq;->OooO00o(Lap;)V

    return-void
.end method

.method public checkPostCaptureAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-interface {p1, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "8.19"

    .line 4
    invoke-direct {p0, v0}, Lcom/google/lens/sdk/LensApi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 5
    invoke-interface {p1, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    new-instance v1, Lbn;

    .line 6
    invoke-direct {v1, p1}, Lbn;-><init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    .line 7
    invoke-static {}, Leb;->OooO00o()V

    new-instance p1, Lam;

    .line 8
    invoke-direct {p1, v0, v1}, Lam;-><init>(Laq;Lap;)V

    invoke-virtual {v0, p1}, Laq;->OooO00o(Lap;)V

    return-void
.end method

.method public launchLensActivity(Landroid/app/Activity;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lbj;

    .line 1
    invoke-direct {v0, p0, p1}, Lbj;-><init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchLensActivity(Landroid/app/Activity;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid lens activity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LensApi"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/lens/sdk/LensApi;->c:Lal;

    iget-object p2, p2, Lal;->f:Lbi;

    iget p2, p2, Lbi;->e:I

    .line 5
    invoke-static {p2}, Lbh;->OooO00o(I)I

    move-result p2

    if-nez p2, :cond_1

    sget p2, Lbh;->a:I

    :cond_1
    sget v0, Lbh;->b:I

    if-ne p2, v0, :cond_2

    new-instance p2, Landroid/content/Intent;

    .line 6
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.ar.lens"

    const-string v1, "com.google.vr.apps.ornament.app.MainActivity"

    .line 7
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    new-instance p2, Lbl;

    .line 10
    invoke-direct {p2, p0, p1}, Lbl;-><init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V
    .locals 2

    .line 11
    invoke-static {}, Lbs;->OooO0OO()Lbr;

    move-result-object v0

    invoke-virtual {v0}, Lbr;->OooO00o()Lbs;

    move-result-object v0

    new-instance v1, Lbk;

    .line 12
    invoke-direct {v1, p0, p1, v0}, Lbk;-><init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;Lbs;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public launchLensActivityWithBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->e:Landroid/app/KeyguardManager;

    .line 1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "LensApi"

    const-string v0, "Cannot start Lens with Bitmap when device is locked."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 4
    invoke-static {}, Lbs;->OooO0OO()Lbr;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lbr;->OooO00o(Ljava/lang/Long;)V

    invoke-virtual {v2}, Lbr;->OooO00o()Lbs;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/lens/sdk/LensApi;->a(Landroid/graphics/Bitmap;Lbs;)Z

    move-result p1

    return p1
.end method

.method public launchLensActivityWithBitmapForTranslate(Landroid/graphics/Bitmap;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 1
    invoke-virtual {v0}, Laq;->OooO0Oo()Lx;

    move-result-object v0

    iget v0, v0, Lx;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "LensApi"

    const-string v0, "Translate is not supported."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    sget-object v0, Lbe;->c:Lbe;

    .line 4
    invoke-virtual {v0}, Lde;->OooO0oo()Lda;

    move-result-object v0

    check-cast v0, Lbb;

    .line 5
    sget-object v2, Lbd;->a:Lbd;

    iget-boolean v3, v0, Lda;->c:Z

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lda;->b()V

    iput-boolean v1, v0, Lda;->c:Z

    :goto_0
    iget-object v1, v0, Lda;->b:Lde;

    .line 7
    check-cast v1, Lbe;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lbe;->b:Lbd;

    iget v2, v1, Lbe;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lbe;->a:I

    .line 9
    invoke-virtual {v0}, Lda;->OooO0O0()Lde;

    move-result-object v0

    check-cast v0, Lbe;

    .line 10
    invoke-static {}, Lbs;->OooO0OO()Lbr;

    move-result-object v1

    iget-object v2, v1, Lbr;->a:Lbs;

    const/4 v3, 0x5

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lbs;->e:Ljava/lang/Integer;

    iget-object v2, v1, Lbr;->a:Lbs;

    iput-object v0, v2, Lbs;->d:Lbe;

    .line 12
    invoke-virtual {v1}, Lbr;->OooO00o()Lbs;

    move-result-object v0

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/google/lens/sdk/LensApi;->a(Landroid/graphics/Bitmap;Lbs;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 1
    invoke-virtual {v0}, Laq;->OooO0O0()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/lens/sdk/LensApi;->d:Laq;

    .line 1
    invoke-virtual {v0}, Laq;->OooO00o()V

    return-void
.end method

.method public requestLensActivityPendingIntent(Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 1

    .line 1
    invoke-static {}, Lbs;->OooO0OO()Lbr;

    move-result-object v0

    invoke-virtual {v0}, Lbr;->OooO00o()Lbs;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/lens/sdk/LensApi;->a(Lbs;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p1

    return p1
.end method

.method public requestLensActivityPendingIntentWithBitmap(Landroid/graphics/Bitmap;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 1

    .line 1
    invoke-static {}, Lbs;->OooO0OO()Lbr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbr;->OooO00o(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lbr;->OooO00o()Lbs;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/lens/sdk/LensApi;->a(Lbs;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p1

    return p1
.end method

.method public requestLensActivityPendingIntentWithBitmapUri(Landroid/content/Context;Landroid/net/Uri;Lcom/google/lens/sdk/PendingIntentConsumer;)Z
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "com.google.android.googlequicksearchbox"

    .line 1
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2
    :goto_0
    invoke-static {}, Lbs;->OooO0OO()Lbr;

    move-result-object p1

    iget-object v0, p1, Lbr;->a:Lbs;

    iput-object p2, v0, Lbs;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Lbr;->OooO00o()Lbs;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/google/lens/sdk/LensApi;->a(Lbs;Lcom/google/lens/sdk/PendingIntentConsumer;)Z

    move-result p1

    return p1
.end method
