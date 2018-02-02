.class final Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;
.super Landroid/database/ContentObserver;
.source "ContentObserverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/ContentObserverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContentObserver"
.end annotation


# instance fields
.field public final callbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/ContentObserverImpl$ContentChangeCallbackHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final contentUri:Landroid/net/Uri;

.field public lastChangedTime:J

.field final synthetic this$0:Lcom/oneplus/gallery/media/ContentObserverImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/ContentObserverImpl;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/ContentObserverImpl;

    .line 103
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    .line 104
    iput-object p2, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    .line 105
    return-void
.end method


# virtual methods
.method public notifyChange(Landroid/net/Uri;Z)V
    .locals 2

    .prologue
    .line 113
    if-nez p2, :cond_0

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentChangeCallbackHandle;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentChangeCallbackHandle;->notifyContentChanged(Landroid/net/Uri;)V

    .line 115
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 114
    iput-wide v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->lastChangedTime:J

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public notifyChange(Z)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->notifyChange(Landroid/net/Uri;Z)V

    .line 110
    return-void
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 123
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .prologue
    const/16 v4, 0x2738

    .line 127
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".+/[\\d]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->lastChangedTime:J

    .line 129
    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/ContentObserverImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/media/ContentObserverImpl;->access$2(Lcom/oneplus/gallery/media/ContentObserverImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/ContentObserverImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/media/ContentObserverImpl;->access$2(Lcom/oneplus/gallery/media/ContentObserverImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/ContentObserverImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/ContentObserverImpl;

    invoke-static {v0}, Lcom/oneplus/gallery/media/ContentObserverImpl;->access$2(Lcom/oneplus/gallery/media/ContentObserverImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
