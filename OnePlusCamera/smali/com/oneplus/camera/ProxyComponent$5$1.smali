.class Lcom/oneplus/camera/ProxyComponent$5$1;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ProxyComponent$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ProxyComponent$5;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ProxyComponent$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ProxyComponent$5;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/oneplus/camera/ProxyComponent$5$1;->this$1:Lcom/oneplus/camera/ProxyComponent$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    const/4 v4, 0x0

    .line 436
    iget-object v0, p0, Lcom/oneplus/camera/ProxyComponent$5$1;->this$1:Lcom/oneplus/camera/ProxyComponent$5;

    iget-object v0, v0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p3}, Lcom/oneplus/base/EventArgs;->clone()Lcom/oneplus/base/EventArgs;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, -0x2710

    invoke-static {v0, v2, v4, v4, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    .line 434
    return-void
.end method
