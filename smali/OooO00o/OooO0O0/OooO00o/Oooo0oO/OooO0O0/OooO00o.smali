.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/data/observeable/FilmViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/observeable/FilmViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO00o;->OooO00o:Lcom/android/camera/data/observeable/FilmViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooo0oO/OooO0O0/OooO00o;->OooO00o:Lcom/android/camera/data/observeable/FilmViewModel;

    check-cast p1, Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/observeable/FilmViewModel;->OooO00o(Lcom/android/camera/fragment/film/FilmList;)Lcom/android/camera/fragment/film/FilmList;

    move-result-object p1

    return-object p1
.end method
