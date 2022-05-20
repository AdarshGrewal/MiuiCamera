.class public final synthetic LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooOoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooOoO;->OooO00o:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/o000oOoO/OoooOoO;->OooO00o:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/camera/module/DollyZoomModule;->OooO00o(Landroid/net/Uri;)V

    return-void
.end method
