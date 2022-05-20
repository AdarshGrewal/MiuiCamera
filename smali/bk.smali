.class public final synthetic Lbk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/google/lens/sdk/LensApi;

.field public final b:Landroid/app/Activity;

.field public final c:Lbs;


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi;Landroid/app/Activity;Lbs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbk;->a:Lcom/google/lens/sdk/LensApi;

    iput-object p2, p0, Lbk;->b:Landroid/app/Activity;

    iput-object p3, p0, Lbk;->c:Lbs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbk;->a:Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Lbk;->b:Landroid/app/Activity;

    iget-object v2, p0, Lbk;->c:Lbs;

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;Lbs;)V

    return-void
.end method
