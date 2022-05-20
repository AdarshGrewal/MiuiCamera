.class public final synthetic LOooO00o/OooO0o/OooO0O0/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

.field private final synthetic OooO0O0:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0o/OooO0O0/OooO0OO;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iput-object p2, p0, LOooO00o/OooO0o/OooO0O0/OooO0OO;->OooO0O0:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0o/OooO0O0/OooO0OO;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v1, p0, LOooO00o/OooO0o/OooO0O0/OooO0OO;->OooO0O0:Landroid/util/Size;

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->OooO00o(Landroid/util/Size;)V

    return-void
.end method
