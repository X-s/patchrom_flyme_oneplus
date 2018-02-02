.class final Lcom/oneplus/base/MemoryMonitor$1;
.super Ljava/lang/Thread;
.source "MemoryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/MemoryMonitor;->start(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 126
    invoke-static {}, Lcom/oneplus/base/MemoryMonitor;->-wrap0()V

    .line 124
    return-void
.end method
