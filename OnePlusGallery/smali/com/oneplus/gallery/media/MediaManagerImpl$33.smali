.class Lcom/oneplus/gallery/media/MediaManagerImpl$33;
.super Landroid/os/Handler;
.source "MediaManagerImpl.java"


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
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 5053
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$33;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5057
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$33;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->handleContentThreadMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$5600(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/os/Message;)V

    .line 5058
    return-void
.end method
