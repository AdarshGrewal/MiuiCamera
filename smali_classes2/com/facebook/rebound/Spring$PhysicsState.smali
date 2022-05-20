.class public Lcom/facebook/rebound/Spring$PhysicsState;
.super Ljava/lang/Object;
.source "Spring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/Spring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhysicsState"
.end annotation


# instance fields
.field public position:D

.field public velocity:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/rebound/Spring$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>()V

    return-void
.end method
