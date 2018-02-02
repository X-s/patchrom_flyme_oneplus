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
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/TempVideoMedia$3;)Lcom/oneplus/gallery2/media/TempVideoMedia;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 183
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/media/TempVideoMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/media/VideoUtils;->readMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/oneplus/media/VideoMetadata;

    move-result-object v7

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 185
    invoke-static {}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$4()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseVideoFile() - Take "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms to read metadata from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-nez v7, :cond_0

    const-wide/16 v0, 0x0

    .line 210
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    new-instance v3, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/oneplus/gallery2/media/TempVideoMedia$3$1;-><init>(Lcom/oneplus/gallery2/media/TempVideoMedia$3;JLandroid/util/Size;)V

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    .line 222
    return-void

    .line 192
    :cond_0
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_WIDTH:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 193
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 194
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 195
    if-gtz v1, :cond_2

    .line 203
    :cond_1
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v5, v5}, Landroid/util/Size;-><init>(II)V

    .line 204
    :goto_1
    invoke-static {}, Lcom/oneplus/gallery2/media/TempVideoMedia;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "parseVideoFile() - Media : "

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempVideoMedia$3;->this$0:Lcom/oneplus/gallery2/media/TempVideoMedia;

    const-string/jumbo v3, ", size : "

    const-string/jumbo v5, ", orientation : "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/oneplus/media/VideoMetadata;->PROP_DURATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v7, v0}, Lcom/oneplus/media/VideoMetadata;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 195
    :cond_2
    if-lez v2, :cond_1

    .line 197
    rem-int/lit16 v0, v6, 0xb4

    if-eqz v0, :cond_3

    .line 200
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v1}, Landroid/util/Size;-><init>(II)V

    goto :goto_1

    .line 198
    :cond_3
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v1, v2}, Landroid/util/Size;-><init>(II)V

    goto :goto_1
.end method
