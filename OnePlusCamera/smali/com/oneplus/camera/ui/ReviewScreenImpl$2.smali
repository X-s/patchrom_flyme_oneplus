.class Lcom/oneplus/camera/ui/ReviewScreenImpl$2;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl;->deleteLastMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->val$contentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 127
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    # getter for: Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->access$200(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteLastMedia() - Content Uri: "

    iget-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->val$contentUri:Landroid/net/Uri;

    const-string v4, ", file path: "

    iget-object v5, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->val$filePath:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->val$contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    # getter for: Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->access$300(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteLastMedia() - Error when delete content Uri"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
