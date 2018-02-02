.class final Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThumbInfoTask"
.end annotation


# instance fields
.field public final animation:Z

.field public final captureHandle:Lcom/oneplus/camera/CaptureHandle;

.field public contentUri:Landroid/net/Uri;

.field public decodingHandle:Lcom/oneplus/base/Handle;

.field public filePath:Ljava/lang/String;

.field public final frameIndex:I

.field public final height:I

.field public final isSimpleUITask:Z

.field private final m_Id:Ljava/lang/String;

.field private m_IsDecoded:Z

.field private m_IsFinished:Z

.field private m_IsStarted:Z

.field public final media:Lcom/oneplus/gallery2/media/Media;

.field public final showInSimpleUI:Z

.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

.field public thumbnail:Landroid/graphics/Bitmap;

.field public final width:I

.field public final yuvImage:[B


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsFinished:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->isDecoded()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->isFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->isStarted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->complete()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;Landroid/net/Uri;ZZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "frameIndex"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "contentUri"    # Landroid/net/Uri;
    .param p6, "animation"    # Z
    .param p7, "showInSimple"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 232
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-boolean p6, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->animation:Z

    .line 235
    iput-object p2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 236
    iput p3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->frameIndex:I

    .line 237
    iput-object p4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    .line 238
    iput-object p5, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->contentUri:Landroid/net/Uri;

    .line 239
    iput-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->yuvImage:[B

    .line 240
    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->width:I

    .line 241
    iput v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->height:I

    .line 242
    iput-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->media:Lcom/oneplus/gallery2/media/Media;

    .line 243
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->isSimpleUITask:Z

    .line 244
    iput-boolean p7, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->showInSimpleUI:Z

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "File_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;ZZ)V
    .locals 8
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "frameIndex"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "animation"    # Z
    .param p6, "showInSimpleUI"    # Z

    .prologue
    .line 230
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;ILjava/lang/String;Landroid/net/Uri;ZZ)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;I[BIIZZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p2, "captureHandle"    # Lcom/oneplus/camera/CaptureHandle;
    .param p3, "frameIndex"    # I
    .param p4, "yuvImage"    # [B
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "animation"    # Z
    .param p8, "showInSimple"    # Z

    .prologue
    .line 247
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-boolean p7, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->animation:Z

    .line 250
    iput-object p2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 251
    iput p3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->frameIndex:I

    .line 252
    iput-object p4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->yuvImage:[B

    .line 253
    iput p5, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->width:I

    .line 254
    iput p6, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->height:I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->media:Lcom/oneplus/gallery2/media/Media;

    .line 256
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->isSimpleUITask:Z

    .line 257
    iput-boolean p8, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->showInSimpleUI:Z

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Postview_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/gallery2/media/Media;ZZ)V
    .locals 3
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;
    .param p2, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p3, "animation"    # Z
    .param p4, "showInSimple"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 213
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-boolean p3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->animation:Z

    .line 216
    iput-object p2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->media:Lcom/oneplus/gallery2/media/Media;

    .line 217
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    .line 218
    invoke-interface {p2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->contentUri:Landroid/net/Uri;

    .line 219
    iput-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    .line 220
    iput v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->frameIndex:I

    .line 221
    iput-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->yuvImage:[B

    .line 222
    iput v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->width:I

    .line 223
    iput v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->height:I

    .line 224
    invoke-virtual {p1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SIMPLE_UI_MODE_ENTERED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->isSimpleUITask:Z

    .line 225
    iput-boolean p4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->showInSimpleUI:Z

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Media_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    .line 213
    return-void
.end method

.method private complete()V
    .locals 5

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsFinished:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[Thumb Task \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v3, "\'] complete() - Task is already finished, file path: "

    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->contentUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[Thumb Task \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v3, "\'] complete() - Wait for content Uri"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[Thumb Task \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v3, "\'] complete() - Wait for thumbnail image"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    return-void

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->thumbnail:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get5(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 299
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V

    .line 302
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsFinished:Z

    .line 305
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    if-eqz v0, :cond_5

    .line 307
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->notifyCapturedThumbnailImage()V

    .line 308
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap8(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V

    .line 314
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[Thumb Task \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v3, "\'] complete() - Task is completed, file path: "

    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    return-void

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V

    goto :goto_0
.end method

.method private decodeThumbnailImage()V
    .locals 8

    .prologue
    const/16 v3, 0x100

    .line 321
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">> [Decode Thumb \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v4, "\'] decodeThumbnailImage() - File path: "

    iget-object v5, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 324
    invoke-static {}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get1()Lcom/oneplus/media/CenterCroppedBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    new-instance v6, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$1;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V

    .line 361
    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 324
    const/4 v2, 0x0

    const/4 v5, 0x3

    move v4, v3

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/media/CenterCroppedBitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 318
    return-void
.end method

.method private isDecoded()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsDecoded:Z

    return v0
.end method

.method private isFinished()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsFinished:Z

    return v0
.end method

.method private isStarted()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsStarted:Z

    return v0
.end method

.method private notifyCapturedThumbnailImage()V
    .locals 21

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/CameraGallery;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->yuvImage:[B

    if-eqz v2, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[Thumb Task \'"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v5, "\'] notifyThumbnailImage() - Send thumbnail to camera gallery"

    invoke-static {v2, v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/camera/ui/CameraGallery;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->contentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->thumbnail:Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/CameraGallery;->addTempThumbnailImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 395
    :cond_0
    const/16 v16, 0x0

    const/4 v12, 0x0

    .local v12, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 397
    .end local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v13, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 398
    .local v14, "time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->thumbnail:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {v2, v3, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 399
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 400
    .local v9, "compressedThumb":[B
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v14, v2, v14

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[Thumb Task \'"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v5, "\'] notifyThumbnailImage() - Take "

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, " ms to compress thumbnail image, size is "

    array-length v8, v9

    int-to-long v0, v8

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/oneplus/io/FileUtils;->getFileSizeDescription(J)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 408
    if-eqz v13, :cond_1

    :try_start_2
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    if-eqz v16, :cond_5

    :try_start_3
    throw v16
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 405
    :catch_0
    move-exception v10

    .local v10, "ex":Ljava/lang/Throwable;
    move-object v12, v13

    .line 406
    .end local v9    # "compressedThumb":[B
    .end local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "time":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Thumb Task \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'] notifyThumbnailImage() - Fail to compress thumbnail image"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    return-void

    .line 408
    .end local v10    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "compressedThumb":[B
    .restart local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "time":J
    :catch_1
    move-exception v16

    goto :goto_0

    .end local v9    # "compressedThumb":[B
    .end local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "time":J
    .restart local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v2

    .end local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v3

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    :goto_3
    if-eqz v12, :cond_2

    :try_start_5
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_4
    if-eqz v3, :cond_4

    :try_start_6
    throw v3

    .line 405
    :catch_3
    move-exception v10

    .restart local v10    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 408
    .end local v10    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v4

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_4

    :cond_3
    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 413
    .restart local v9    # "compressedThumb":[B
    .restart local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "time":J
    :cond_5
    :try_start_7
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.camera.intent.action.THUMBNAIL_CREATED"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v11, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->contentUri:Landroid/net/Uri;

    const-string/jumbo v3, "*/*"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string/jumbo v2, "compressed-thumbnail-image"

    invoke-virtual {v11, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/oneplus/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 383
    .end local v11    # "intent":Landroid/content/Intent;
    :goto_5
    return-void

    .line 419
    :catch_5
    move-exception v10

    .line 420
    .restart local v10    # "ex":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Thumb Task \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'] notifyThumbnailImage() - Fail to send broadcast"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 408
    .end local v9    # "compressedThumb":[B
    .end local v10    # "ex":Ljava/lang/Throwable;
    .end local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "time":J
    .restart local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v3, v16

    goto :goto_3

    .end local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v3, v16

    move-object v12, v13

    .end local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .local v12, "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v2

    move-object v12, v13

    .end local v13    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "stream":Ljava/io/ByteArrayOutputStream;
    goto :goto_2
.end method

.method private processYUVImage()V
    .locals 7

    .prologue
    .line 428
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ">> [Process YUV Thumb \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v3, "\'] processYUVImage() - Start"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    iget v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->frameIndex:I

    iget-object v3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->yuvImage:[B

    iget v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->width:I

    iget v5, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->height:I

    new-instance v6, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$2;

    invoke-direct {v6, p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask$2;-><init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;)V

    invoke-static/range {v0 .. v6}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap10(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;I[BIILcom/oneplus/base/ResultCallback;)V

    .line 425
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 265
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsFinished:Z

    .line 271
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[Thumb Task \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v3, "\'] cancel() - Task is canceled: "

    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsFinished:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Thumb Task \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'] run() - Task is already finished, file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    return-void

    .line 479
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsStarted:Z

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Thumb Task \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'] run() - Task is already started, file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void

    .line 487
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_IsStarted:Z

    .line 490
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[Thumb Task \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v3, "\'] run() - Start running, file path: "

    iget-object v4, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 494
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->decodeThumbnailImage()V

    .line 470
    :cond_2
    :goto_0
    return-void

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->yuvImage:[B

    if-eqz v0, :cond_2

    .line 496
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->processYUVImage()V

    goto :goto_0
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get0(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[Thumb Task \'"

    iget-object v2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->m_Id:Ljava/lang/String;

    const-string/jumbo v3, "\'] setContentUri() - Content uri: "

    invoke-static {v0, v1, v2, v3, p1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 506
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->contentUri:Landroid/net/Uri;

    .line 509
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$ThumbInfoTask;->complete()V

    .line 500
    return-void
.end method
