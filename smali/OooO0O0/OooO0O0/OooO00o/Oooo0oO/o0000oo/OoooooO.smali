.class public final synthetic LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooooO;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/Oooo0oO/o0000oo/OoooooO;->OooO00o:Ljava/lang/String;

    check-cast p1, Lcom/android/camera/dualvideo/render/MiscRenderItem;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/MiscTextureManager;->OooO00o(Ljava/lang/String;Lcom/android/camera/dualvideo/render/MiscRenderItem;)Z

    move-result p1

    return p1
.end method
