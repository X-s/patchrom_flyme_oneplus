.class Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;
.super Lcom/oneplus/base/Handle;
.source "MemoryUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/MemoryUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUsageHandle"
.end annotation


# instance fields
.field memoryUsage:J

.field final synthetic this$0:Lcom/oneplus/base/MemoryUsage;


# direct methods
.method constructor <init>(Lcom/oneplus/base/MemoryUsage;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/base/MemoryUsage;
    .param p2, "memoryUsage"    # J

    .prologue
    .line 31
    iput-object p1, p0, Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;->this$0:Lcom/oneplus/base/MemoryUsage;

    .line 33
    const-string/jumbo v0, "Memory Usage Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 34
    iput-wide p2, p0, Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;->memoryUsage:J

    .line 31
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;->this$0:Lcom/oneplus/base/MemoryUsage;

    invoke-static {v0, p0}, Lcom/oneplus/base/MemoryUsage;->-wrap0(Lcom/oneplus/base/MemoryUsage;Lcom/oneplus/base/MemoryUsage$MemoryUsageHandle;)V

    .line 40
    return-void
.end method
