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

    .prologue
    .line 374
    iput-object p1, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    iput-object p2, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->val$event:Lcom/oneplus/base/EventKey;

    iput-object p3, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 378
    iget-object v0, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->this$0:Lcom/oneplus/camera/io/FileManagerImpl;

    iget-object v1, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->val$event:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/media/MediaEventArgs;

    iget-object v3, p0, Lcom/oneplus/camera/io/FileManagerImpl$2;->val$path:Ljava/lang/String;

    invoke-direct {v2, v4, v3, v4, v4}, Lcom/oneplus/camera/media/MediaEventArgs;-><init>(Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    # invokes: Lcom/oneplus/camera/io/FileManagerImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/io/FileManagerImpl;->access$100(Lcom/oneplus/camera/io/FileManagerImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 379
    return-void
.end method
