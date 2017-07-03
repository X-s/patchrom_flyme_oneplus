.class Lcom/oneplus/gallery2/editor/NetEaseFilter$7;
.super Ljava/lang/Object;
.source "NetEaseFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/NetEaseFilter;->onFinalResultFilterSDKTextureLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/NetEaseFilter;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/NetEaseFilter$7;->this$0:Lcom/oneplus/gallery2/editor/NetEaseFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 924
    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$2100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 926
    :try_start_0
    # getter for: Lcom/oneplus/gallery2/editor/NetEaseFilter;->SYNC_FINAL_RESULT_FILTER_STATE_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/oneplus/gallery2/editor/NetEaseFilter;->access$2100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 927
    monitor-exit v1

    .line 928
    return-void

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
