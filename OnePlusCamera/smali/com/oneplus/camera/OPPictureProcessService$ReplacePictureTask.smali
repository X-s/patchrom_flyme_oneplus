.class Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;
.super Ljava/lang/Object;
.source "OPPictureProcessService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/OPPictureProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplacePictureTask"
.end annotation


# instance fields
.field compressedImage:[B

.field compressedImageMemoryUsageHandle:Lcom/oneplus/base/Handle;

.field compressedThumbImage:[B

.field final contentUri:Landroid/net/Uri;

.field final filePath:Ljava/lang/String;

.field final pictureId:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/camera/OPPictureProcessService;

.field final type:Lcom/oneplus/camera/PictureProcessService$ProcessType;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/OPPictureProcessService;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[BLcom/oneplus/camera/PictureProcessService$ProcessType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/OPPictureProcessService;
    .param p2, "pictureId"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "contentUri"    # Landroid/net/Uri;
    .param p5, "compressImage"    # [B
    .param p6, "type"    # Lcom/oneplus/camera/PictureProcessService$ProcessType;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p4, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->contentUri:Landroid/net/Uri;

    .line 224
    iput-object p3, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->filePath:Ljava/lang/String;

    .line 225
    iput-object p2, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    .line 226
    iput-object p5, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->compressedImage:[B

    .line 227
    iput-object p6, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->type:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    .line 221
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->this$0:Lcom/oneplus/camera/OPPictureProcessService;

    invoke-static {v0, p0}, Lcom/oneplus/camera/OPPictureProcessService;->-wrap3(Lcom/oneplus/camera/OPPictureProcessService;Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;)V

    .line 232
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ReplacePictureTask["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] Picture id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->pictureId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ", type: "

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->type:Lcom/oneplus/camera/PictureProcessService$ProcessType;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ", uri: "

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->contentUri:Landroid/net/Uri;

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ", buffer: "

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$ReplacePictureTask;->compressedImage:[B

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "}"

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
