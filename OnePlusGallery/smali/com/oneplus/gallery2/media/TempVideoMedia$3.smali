.class Lcom/oneplus/gallery2/media/TempVideoMedia$3;
.super Ljava/lang/Object;
.source "TempVideoMedia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/TempVideoMedia;->parseVideoFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/TempVideoMedia;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 183
    .local v12, "time":J
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/media/TempVideoMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/media/VideoUtils;->readMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/oneplus/media/VideoMetadata;

    move-result-object v10

    .line 184
    .local v10, "metadata":Lcom/oneplus/media/VideoMetadata;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v12, v0, v12

    .line 185
    # getter for: Lcom/oneplus/gallery2/media/TempVideoMedia;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseVideoFile() - Take "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms to read metadata from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz v10, :cond_2

    .line 192
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 193
    .local v14, "width":I
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 194
    .local v7, "height":I
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 195
    .local v11, "orientation":I
    if-lez v14, :cond_1

    if-lez v7, :cond_1

    .line 197
    rem-int/lit16 v0, v11, 0xb4

    if-nez v0, :cond_0

    .line 198
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v14, v7}, Landroid/util/Size;-><init>(II)V

    .line 204
    .local v4, "size":Landroid/util/Size;
    :goto_0
    # getter for: Lcom/oneplus/gallery2/media/TempVideoMedia;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parseVideoFile() - Media : "

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    const-string v3, ", size : "

    const-string v5, ", orientation : "

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_DURATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v10, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 214
    .end local v7    # "height":I
    .end local v11    # "orientation":I
    .end local v14    # "width":I
    .local v8, "duration":J
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    new-instance v1, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;

    invoke-direct {v1, p0, v8, v9, v4}, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;-><init>(Lcom/oneplus/gallery2/media/TempVideoMedia$3;JLandroid/util/Size;)V

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 222
    return-void

    .line 200
    .end local v4    # "size":Landroid/util/Size;
    .end local v8    # "duration":J
    .restart local v7    # "height":I
    .restart local v11    # "orientation":I
    .restart local v14    # "width":I
    :cond_0
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v7, v14}, Landroid/util/Size;-><init>(II)V

    .restart local v4    # "size":Landroid/util/Size;
    goto :goto_0

    .line 203
    .end local v4    # "size":Landroid/util/Size;
    :cond_1
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v3, v3}, Landroid/util/Size;-><init>(II)V

    .restart local v4    # "size":Landroid/util/Size;
    goto :goto_0

    .line 209
    .end local v4    # "size":Landroid/util/Size;
    .end local v7    # "height":I
    .end local v11    # "orientation":I
    .end local v14    # "width":I
    :cond_2
    const-wide/16 v8, 0x0

    .line 210
    .restart local v8    # "duration":J
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v3, v3}, Landroid/util/Size;-><init>(II)V

    .restart local v4    # "size":Landroid/util/Size;
    goto :goto_1
.end method
