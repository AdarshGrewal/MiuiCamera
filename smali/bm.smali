.class public final synthetic Lbm;
.super Ljava/lang/Object;

# interfaces
.implements Lap;


# instance fields
.field public final a:Lcom/google/lens/sdk/LensApi;

.field public final b:Lbs;

.field public final c:J

.field public final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi;Lbs;JLandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbm;->a:Lcom/google/lens/sdk/LensApi;

    iput-object p2, p0, Lbm;->b:Lbs;

    iput-wide p3, p0, Lbm;->c:J

    iput-object p5, p0, Lbm;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    iget-object v0, p0, Lbm;->a:Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Lbm;->b:Lbs;

    iget-wide v2, p0, Lbm;->c:J

    iget-object v4, p0, Lbm;->d:Landroid/app/Activity;

    .line 1
    sget v5, Lbh;->b:I

    if-ne p1, v5, :cond_0

    .line 2
    invoke-virtual {v1}, Lbs;->OooO00o()Lbr;

    move-result-object p1

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbr;->OooO00o(Ljava/lang/Long;)V

    .line 4
    invoke-virtual {p1}, Lbr;->OooO00o()Lbs;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/lens/sdk/LensApi;->a(Lbs;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;)V

    return-void
.end method
