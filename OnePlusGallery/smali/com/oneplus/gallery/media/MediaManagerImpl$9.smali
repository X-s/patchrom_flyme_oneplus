.class Lcom/oneplus/gallery/media/MediaManagerImpl$9;
.super Landroid/content/BroadcastReceiver;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;
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
    .line 500
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$9;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$9;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->onNewMediaIntentReceived(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$1300(Lcom/oneplus/gallery/media/MediaManagerImpl;Landroid/content/Intent;)V

    .line 505
    return-void
.end method
