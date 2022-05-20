.class public final synthetic LOooO00o/OooO0o/OooO0O0/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0o/OooO0O0/OooO0O0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iput p2, p0, LOooO00o/OooO0o/OooO0O0/OooO0O0;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0o/OooO0O0/OooO0O0;->OooO00o:Lcom/xiaomi/renderengine/RenderEngine;

    iget v1, p0, LOooO00o/OooO0o/OooO0O0/OooO0O0;->OooO0O0:I

    check-cast p1, Lcom/xiaomi/renderengine/renderer/Renderer;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/renderengine/RenderEngine;->OooO0O0(ILcom/xiaomi/renderengine/renderer/Renderer;)V

    return-void
.end method
