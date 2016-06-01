.class Lcom/oppo/tribune/util/NetCheckService$4;
.super Ljava/lang/Object;
.source "NetCheckService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/util/NetCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/util/NetCheckService;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/util/NetCheckService;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/oppo/tribune/util/NetCheckService$4;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oppo/tribune/util/NetCheckService$4$1;

    invoke-direct {v1, p0}, Lcom/oppo/tribune/util/NetCheckService$4$1;-><init>(Lcom/oppo/tribune/util/NetCheckService$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    return-void
.end method
