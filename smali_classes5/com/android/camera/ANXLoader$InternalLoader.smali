.class public Lcom/android/camera/ANXLoader$InternalLoader;
.super Ljava/lang/Object;
.source "ANXLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ANXLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalLoader"
.end annotation


# static fields
.field public static final ANXLoader:Lcom/android/camera/ANXLoader;

.field static startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/ANXLoader$InternalLoader;->startTime:J

    .line 17
    new-instance v0, Lcom/android/camera/ANXLoader;

    sget-wide v1, Lcom/android/camera/ANXLoader$InternalLoader;->startTime:J

    long-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/android/camera/ANXLoader;-><init>(F)V

    sput-object v0, Lcom/android/camera/ANXLoader$InternalLoader;->ANXLoader:Lcom/android/camera/ANXLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load()Z
    .locals 1

    .line 19
    sget-object v0, Lcom/android/camera/ANXLoader$InternalLoader;->ANXLoader:Lcom/android/camera/ANXLoader;

    iget-boolean v0, v0, Lcom/android/camera/ANXLoader;->loaded:Z

    return v0
.end method
