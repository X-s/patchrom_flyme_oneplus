.class Lcom/oneplus/gallery/CameraGalleryImpl$25;
.super Landroid/content/BroadcastReceiver;
.source "CameraGalleryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 3624
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$25;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3630
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 3631
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3632
    .local v1, "contentUri":Landroid/net/Uri;
    const-string/jumbo v3, "filePath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3634
    .local v2, "filePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$25;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get2(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onReceive() - Clear cache for filePath: "

    const-string/jumbo v5, ", content URI: "

    invoke-static {v3, v4, v2, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3637
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$25;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap53(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/net/Uri;Ljava/lang/String;)V

    .line 3627
    return-void
.end method
