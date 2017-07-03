.class Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaStoreMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaStoreMediaSource$2;->this$0:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    # invokes: Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->onMediaIntentReceived(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->access$100(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Landroid/content/Intent;)V

    .line 136
    return-void
.end method
