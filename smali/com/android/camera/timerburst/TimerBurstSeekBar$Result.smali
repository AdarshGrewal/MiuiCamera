.class public Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;
.super Ljava/lang/Object;
.source "TimerBurstSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/timerburst/TimerBurstSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public mResultHideType:I

.field public final synthetic this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/camera/timerburst/TimerBurstSeekBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->this$0:Lcom/android/camera/timerburst/TimerBurstSeekBar;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResultHideType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->mResultHideType:I

    return v0
.end method

.method public setHideType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/timerburst/TimerBurstSeekBar$Result;->mResultHideType:I

    return-void
.end method
