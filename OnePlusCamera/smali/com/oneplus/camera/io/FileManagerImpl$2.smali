.class Lcom/oneplus/camera/io/FileManagerImpl$2;
.super Ljava/lang/Object;
.source "FileManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/io/FileManagerImpl;->notifyCameraThread(Lcom/oneplus/base/EventKey;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/io/FileManagerImpl;

.field final synthetic val$event:Lcom/oneplus/base/EventKey;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/io/FileManagerImpl;
    .param p3, "val$path"    # Ljava/lang/String;

    .prologue
    .line 395
    .local p2, "val$event":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->val$event:Lcom/oneplus/base/EventKey;

    iput-object p3, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-object v6, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    iget-object v7, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->val$event:Lcom/oneplus/base/EventKey;

    new-instance v0, Lcom/oneplus/camera/media/MediaEventArgs;

    iget-object v3, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->val$path:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-static {v6, v7, v0}, Lcom/oneplus/camera/io/FileManagerImpl;->-wrap6(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 398
    return-void
.end method
