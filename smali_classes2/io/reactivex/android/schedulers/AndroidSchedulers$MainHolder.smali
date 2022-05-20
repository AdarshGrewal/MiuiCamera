.class public final Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;
.super Ljava/lang/Object;
.source "AndroidSchedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/android/schedulers/AndroidSchedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MainHolder"
.end annotation


# static fields
.field public static final DEFAULT:Lio/reactivex/Scheduler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lio/reactivex/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;->DEFAULT:Lio/reactivex/Scheduler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
