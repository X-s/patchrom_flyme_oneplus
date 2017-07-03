.class Lcom/oneplus/gallery/media/MediaManagerImpl$23;
.super Landroid/content/BroadcastReceiver;
.source "MediaManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl;->onInitialize()V
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
    .line 3708
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$23;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3712
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 3713
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "filePath"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3715
    .local v1, "filePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$23;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    # getter for: Lcom/oneplus/gallery/media/MediaManagerImpl;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4200(Lcom/oneplus/gallery/media/MediaManagerImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() - clear cache for filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$23;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    const-string v2, "image/jpeg"

    new-instance v3, Lcom/oneplus/gallery/media/MediaManagerImpl$23$1;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/media/MediaManagerImpl$23$1;-><init>(Lcom/oneplus/gallery/media/MediaManagerImpl$23;)V

    iget-object v4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$23;->this$0:Lcom/oneplus/gallery/media/MediaManagerImpl;

    invoke-virtual {v4}, Lcom/oneplus/gallery/media/MediaManagerImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    # invokes: Lcom/oneplus/gallery/media/MediaManagerImpl;->obtainMedia(Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;
    invoke-static/range {v0 .. v5}, Lcom/oneplus/gallery/media/MediaManagerImpl;->access$4400(Lcom/oneplus/gallery/media/MediaManagerImpl;Ljava/lang/String;Ljava/lang/String;Lcom/oneplus/gallery/media/MediaObtainCallback;Landroid/os/Handler;I)Lcom/oneplus/base/Handle;

    .line 3725
    return-void
.end method
