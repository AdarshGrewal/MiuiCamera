.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooOo0;->OooO00o:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooOo0;->OooO00o:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/android/camera/OnScreenHint;->OooO00o(Landroid/app/Activity;Lio/reactivex/SingleEmitter;)V

    return-void
.end method
