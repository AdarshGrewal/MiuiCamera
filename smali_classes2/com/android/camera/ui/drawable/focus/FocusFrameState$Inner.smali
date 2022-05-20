.class public Lcom/android/camera/ui/drawable/focus/FocusFrameState$Inner;
.super Ljava/lang/Object;
.source "FocusFrameState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/drawable/focus/FocusFrameState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Inner"
.end annotation


# static fields
.field public static final instance:Lcom/android/camera/ui/drawable/focus/FocusFrameState;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;-><init>(Lcom/android/camera/ui/drawable/focus/FocusFrameState$1;)V

    sput-object v0, Lcom/android/camera/ui/drawable/focus/FocusFrameState$Inner;->instance:Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/camera/ui/drawable/focus/FocusFrameState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/ui/drawable/focus/FocusFrameState$Inner;->instance:Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    return-object v0
.end method
