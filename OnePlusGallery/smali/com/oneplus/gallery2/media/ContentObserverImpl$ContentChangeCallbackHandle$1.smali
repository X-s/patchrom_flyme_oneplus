.class Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle$1;
.super Landroid/os/Handler;
.source "ContentObserverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;-><init>(Lcom/oneplus/gallery2/media/ContentObserverImpl;Landroid/net/Uri;Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

.field final synthetic val$this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;Landroid/os/Looper;Lcom/oneplus/gallery2/media/ContentObserverImpl;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle$1;->this$1:Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle$1;->val$this$0:Lcom/oneplus/gallery2/media/ContentObserverImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle$1;->this$1:Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;

    # getter for: Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->m_Callback:Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;->access$000(Lcom/oneplus/gallery2/media/ContentObserverImpl$ContentChangeCallbackHandle;)Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery2/media/ContentObserver$ContentChangeCallback;->onContentChanged(Landroid/net/Uri;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
