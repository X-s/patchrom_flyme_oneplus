.class Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeRoutingEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioRecord;


# direct methods
.method constructor <init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 6
    .param p2, "record"    # Landroid/media/AudioRecord;
    .param p3, "listener"    # Landroid/media/AudioRecord$OnRoutingChangedListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1349
    iput-object p1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->this$0:Landroid/media/AudioRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    if-eqz p4, :cond_0

    .line 1353
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1360
    .local v2, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v2, :cond_1

    .line 1362
    new-instance v0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;-><init>(Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRecord$OnRoutingChangedListener;)V

    iput-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 1383
    :goto_1
    return-void

    .line 1356
    .end local v2    # "looper":Landroid/os/Looper;
    :cond_0
    # getter for: Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/media/AudioRecord;->access$000(Landroid/media/AudioRecord;)Landroid/os/Looper;

    move-result-object v2

    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 1381
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1386
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
