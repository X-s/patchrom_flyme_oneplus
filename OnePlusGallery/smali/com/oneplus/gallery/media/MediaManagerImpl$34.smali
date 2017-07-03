.class Lcom/oneplus/gallery/media/MediaManagerImpl$34;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->startContentThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0

    .prologue
    .line 5061
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$34;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5065
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$34;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v1

    # setter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->m_ContentThreadMonitorHandle:Lcom/oneplus/base/Handle;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4002(Lcom/oneplus/gallery/media/MediaManagerImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 5066
    return-void
.end method
