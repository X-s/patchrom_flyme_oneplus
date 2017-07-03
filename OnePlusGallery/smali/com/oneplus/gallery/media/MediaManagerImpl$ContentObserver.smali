.class final Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;
.super Landroid/database/ContentObserver;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
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
            "Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final contentUri:Landroid/net/Uri;

.field public lastChangedTime:J

.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 1
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 900
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    .line 901
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    .line 902
    iput-object p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    .line 903
    return-void
.end method


# virtual methods
.method public notifyChange(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "resetChangeTime"    # Z

    .prologue
    .line 911
    if-eqz p2, :cond_0

    .line 912
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->lastChangedTime:J

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 914
    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->callbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    invoke-virtual {v1, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->notifyContentChanged(Landroid/net/Uri;)V

    .line 913
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 915
    :cond_1
    return-void
.end method

.method public notifyChange(Z)V
    .locals 1
    .param p1, "resetChangeTime"    # Z

    .prologue
    .line 907
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->notifyChange(Landroid/net/Uri;Z)V

    .line 908
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 920
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 921
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v8, 0x2738

    .line 925
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$2000(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange() - Self change: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", Uri: "

    const-string v5, ", Owner: "

    iget-object v6, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->contentUri:Landroid/net/Uri;

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 926
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".+/[\\d]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    .line 927
    .local v7, "isSpecificUri":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->lastChangedTime:J

    .line 928
    if-eqz v7, :cond_1

    .line 929
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v8, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    sget-object v1, Lcom/oneplus/gallery/media/MediaManager;->PROP_IS_ACTIVE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentObserver;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$900(Lcom/oneplus/gallery/media/MediaManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
