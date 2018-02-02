.class final Lcom/oneplus/base/ThreadMonitor$2;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/ThreadMonitor;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 110
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->-wrap1()V

    .line 108
    return-void
.end method
