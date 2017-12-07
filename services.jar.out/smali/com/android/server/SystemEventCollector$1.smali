.class Lcom/android/server/SystemEventCollector$1;
.super Ljava/lang/Object;
.source "SystemEventCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemEventCollector;->submit(Lcom/android/server/SystemEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemEventCollector;

.field final synthetic val$event:Lcom/android/server/SystemEvent;


# direct methods
.method constructor <init>(Lcom/android/server/SystemEventCollector;Lcom/android/server/SystemEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SystemEventCollector;
    .param p2, "val$event"    # Lcom/android/server/SystemEvent;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/server/SystemEventCollector$1;->this$0:Lcom/android/server/SystemEventCollector;

    iput-object p2, p0, Lcom/android/server/SystemEventCollector$1;->val$event:Lcom/android/server/SystemEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/SystemEventCollector$1;->this$0:Lcom/android/server/SystemEventCollector;

    invoke-static {v0}, Lcom/android/server/SystemEventCollector;->-get1(Lcom/android/server/SystemEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/SystemEventCollector$1;->this$0:Lcom/android/server/SystemEventCollector;

    invoke-static {v2}, Lcom/android/server/SystemEventCollector;->-get0(Lcom/android/server/SystemEventCollector;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SystemEventCollector$1;->val$event:Lcom/android/server/SystemEvent;

    iget-object v2, v2, Lcom/android/server/SystemEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SystemEventCollector$1;->val$event:Lcom/android/server/SystemEvent;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    return-void
.end method
