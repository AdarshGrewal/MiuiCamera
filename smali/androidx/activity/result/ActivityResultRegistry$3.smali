.class public Landroidx/activity/result/ActivityResultRegistry$3;
.super Landroidx/activity/result/ActivityResultLauncher;
.source "ActivityResultRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/ActivityResultLauncher<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field public final synthetic val$key:Ljava/lang/String;

.field public final synthetic val$requestCode:I


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultRegistry;ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$3;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iput p2, p0, Landroidx/activity/result/ActivityResultRegistry$3;->val$requestCode:I

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$3;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Landroidx/activity/result/ActivityResultLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getContract()Landroidx/activity/result/contract/ActivityResultContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/activity/result/contract/ActivityResultContract<",
            "TI;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$3;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    return-object v0
.end method

.method public launch(Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/core/app/ActivityOptionsCompat;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$3;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget v1, p0, Landroidx/activity/result/ActivityResultRegistry$3;->val$requestCode:I

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$3;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroidx/activity/result/ActivityResultRegistry;->onLaunch(ILandroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Landroidx/core/app/ActivityOptionsCompat;)V

    return-void
.end method

.method public unregister()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$3;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$3;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultRegistry;->unregister(Ljava/lang/String;)V

    return-void
.end method
