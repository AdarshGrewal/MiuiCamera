.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/provider/SplashProvider;

.field private final synthetic OooO0O0:Landroid/content/Context;

.field private final synthetic OooO0OO:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/provider/SplashProvider;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO00o;->OooO00o:Lcom/android/camera/provider/SplashProvider;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO00o;->OooO0O0:Landroid/content/Context;

    iput-object p3, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO00o;->OooO0OO:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO00o;->OooO00o:Lcom/android/camera/provider/SplashProvider;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO00o;->OooO0O0:Landroid/content/Context;

    iget-object v2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO00o;->OooO0OO:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/provider/SplashProvider;->OooO00o(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
