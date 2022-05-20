.class public Lcom/android/camera/module/Panorama3Module$3;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$3;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "PanoramaThread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
