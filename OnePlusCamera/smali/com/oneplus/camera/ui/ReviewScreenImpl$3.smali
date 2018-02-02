.class Lcom/oneplus/camera/ui/ReviewScreenImpl$3;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ReviewScreenImpl;
    .param p2, "val$contentUri"    # Landroid/net/Uri;
    .param p3, "val$filePath"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$contentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 160
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "deleteLastMedia() - By content Uri: "

    iget-object v4, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$contentUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$contentUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "deleteLastMedia() - Error when delete content Uri"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "mediaFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    return-void

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "deleteLastMedia() - By file path: "

    iget-object v4, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$filePath:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteLastMedia() - Deletes file failed, file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;->val$filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
