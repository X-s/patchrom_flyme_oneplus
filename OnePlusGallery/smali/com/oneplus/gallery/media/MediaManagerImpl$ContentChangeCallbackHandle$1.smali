.class Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle$1;
.super Landroid/os/Handler;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/net/Uri;Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

.field final synthetic val$this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;Landroid/os/Looper;Lcom/oneplus/gallery/media/MediaManagerImpl;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 852
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle$1;->val$this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 856
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 862
    :goto_0
    return-void

    .line 859
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;->access$1800(Lcom/oneplus/gallery/media/MediaManagerImpl$ContentChangeCallbackHandle;)Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery/media/MediaManager$ContentChangeCallback;->onContentChanged(Landroid/net/Uri;)V

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
