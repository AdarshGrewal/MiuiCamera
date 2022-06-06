.class public interface abstract Lcom/android/camera/resource/LoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "LoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/resource/LoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/android/camera/resource/LoggingInterceptor$Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0Oo;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OoooOo0/OooO0Oo;

    sput-object v0, Lcom/android/camera/resource/LoggingInterceptor$Logger;->DEFAULT:Lcom/android/camera/resource/LoggingInterceptor$Logger;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
