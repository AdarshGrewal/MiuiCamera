.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o000000O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o000000O;->OooO00o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oo/o000000O;->OooO00o:Ljava/util/List;

    check-cast p1, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO00o(Ljava/util/List;Lcom/android/camera/module/encoder/RenderHandler;)V

    return-void
.end method
